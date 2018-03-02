# Mpint
# Copyright 2018 Status Research & Development GmbH
# Licensed under either of
#
#  * Apache License, version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
#  * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)
#
# at your option. This file may not be copied, modified, or distributed except according to those terms.

import ../src/mpint, unittest

suite "Testing byte representation":
  test "Byte representation conforms to the platform endianness":
    let a = initMpUint(20182018, uint32)
    let b = 20182018'u64

    type AsBytes = array[8, byte]

    check cast[AsBytes](a) == cast[AsBytes](b)

