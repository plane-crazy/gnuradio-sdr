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


#ifndef INCLUDED_BHJ_LMS_EQUALIZER_CC_H
#define INCLUDED_BHJ_LMS_EQUALIZER_CC_H

#include <bhj/api.h>
#include <gnuradio/sync_decimator.h>

namespace gr {
  namespace bhj {

    /*!
     * \brief <+description of block+>
     * \ingroup bhj
     *
     */
    class BHJ_API lms_equalizer_cc : virtual public gr::sync_decimator
    {
     public:
      typedef boost::shared_ptr<lms_equalizer_cc> sptr;

      /*!
       * \brief Return a shared_ptr to a new instance of bhj::lms_equalizer_cc.
       *
       * To avoid accidental use of raw pointers, bhj::lms_equalizer_cc's
       * constructor is in a private implementation
       * class. bhj::lms_equalizer_cc::make is the public interface for
       * creating new instances.
       */
      static sptr make(int num_taps, float mu, int decimation);
    };

  } // namespace bhj
} // namespace gr

#endif /* INCLUDED_BHJ_LMS_EQUALIZER_CC_H */

