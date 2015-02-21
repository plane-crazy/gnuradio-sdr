/* -*- c++ -*- */
/* 
 * Copyright 2015 <+YOU OR YOUR COMPANY+>.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "lms_equalizer_cc_impl.h"
#include <gnuradio/io_signature.h>
#include <gnuradio/misc.h>

namespace gr {
namespace bhj {

using namespace filter::kernel;
lms_equalizer_cc::sptr lms_equalizer_cc::make(int num_taps, float mu,
		int decimation) {
	return gnuradio::get_initial_sptr(
			new lms_equalizer_cc_impl(num_taps, mu, decimation));
}

/*
 * The private constructor
 */
lms_equalizer_cc_impl::lms_equalizer_cc_impl(int num_taps, float mu,
		int decimation) :
		gr::sync_decimator("lms_equalizer_cc",
				gr::io_signature::make(1, 1, sizeof(gr_complex)),
				gr::io_signature::make(1, 1, sizeof(gr_complex)), decimation), fir_filter_ccc(
				decimation,
				std::vector < gr_complex > (num_taps, gr_complex(0, 0))), d_new_taps(
				num_taps, gr_complex(0, 0)), d_updated(false) {
	set_gain(mu);
	if (num_taps > 0)
		d_new_taps[0] = 1.0;
	fir_filter_ccc::set_taps(d_new_taps);

	set_history(num_taps);
}

/*
 * Our virtual destructor.
 */
lms_equalizer_cc_impl::~lms_equalizer_cc_impl() {
}



void lms_equalizer_cc_impl::set_taps(const std::vector<gr_complex> &taps) {
	d_new_taps = taps;
	d_updated = true;
}
std::vector<gr_complex> lms_equalizer_cc_impl::taps() const {
	return d_taps;
}

/*
 gr_complex lms_equalizer_cc_impl::error(const gr_complex &out) {
 gr_complex error;
 error = in - out;
 return error;
 }
 */
void lms_equalizer_cc_impl::update_tap(gr_complex &tap, const gr_complex &in) {
	tap += d_mu * conj(in) * d_error;
}

int lms_equalizer_cc_impl::work(int noutput_items,
		gr_vector_const_void_star &input_items,
		gr_vector_void_star &output_items) {
	const gr_complex *in = (const gr_complex *) input_items[0];
	gr_complex *out = (gr_complex *) output_items[0];

	// Do <+signal processing+>
	if (d_updated) {
		d_taps = d_new_taps;
		set_history(d_taps.size());
		d_updated = false;
		return 0;		     // history requirements may have changed.
	}

	int j = 0;
	size_t k, l = d_taps.size();
	for (int i = 0; i < noutput_items; i++) {
		out[i] = filter(&in[j]);

		// Adjust taps
		//d_error = error(out[i], in[j]);
		d_error = in[j] - out[i];
		for (k = 0; k < l; k++) {
			// Update tap locally from error.
			update_tap(d_taps[k], in[j + k]);

			// Update aligned taps in filter object.
			fir_filter_ccc::update_tap(d_taps[k], k);
		}

		j += decimation();
	}

	// Tell runtime system how many output items we produced.
	return noutput_items;
}

} /* namespace bhj */
} /* namespace gr */

