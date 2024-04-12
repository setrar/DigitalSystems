#
# Copyright © Telecom Paris
# Copyright © Renaud Pacalet (renaud.pacalet@telecom-paris.fr)
# 
# This file must be used under the terms of the CeCILL. This source
# file is licensed as described in the file COPYING, which you should
# have received as part of this distribution. The terms are also
# available at:
# https://cecill.info/licences/Licence_CeCILL_V2.1-en.html
#

# edit the following assignments to declare the target clock frequency, the
# list of VHDL source files, the IO ports and any other relevant parameter

# target clock frequency (MHz)
set f_mhz 100

# list of design units: FILE LIBRARY (paths relative to vhdl/)
array set dus {
    lab02/sr.vhd                     work
    lab03/timer.vhd                  work
    lab05/edge.vhd                   work
    lab06/counter.vhd                work
    lab08/dht11_ctrl.vhd             work
    common/axi_pkg.vhd               common
    lab09/dht11_ctrl_axi_wrapper.vhd work
}

# list of external ports: NAME { PIN IO_STANDARD }
array set ios {
    data   {}
    led[0] {}
    led[1] {}
    led[2] {}
    led[3] {}
}

# other relevant parameters
set start_us XXX
set warm_us XXX

# vim: set tabstop=4 softtabstop=4 shiftwidth=4 expandtab textwidth=0:
