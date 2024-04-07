{-|
  Copyright   :  (C) 2024, Rowan Goemans <goemansrowan@gmail.com>
  License     :  BSD2 (see the file LICENSE)
  Maintainer  :  QBayLogic B.V. <devops@qbaylogic.com>

CRC parameter catalog

This module provides a variety of common CRCs
All entries are from https://reveng.sourceforge.io/crc-catalogue/all.htm

Every CRC expects a datawidth input which indicates what width in bits of data
will be fed into it.
-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE FunctionalDependencies #-}

module Clash.Cores.Crc.Catalog where

import Clash.Prelude
import Clash.Cores.Crc.Internal

data Crc3_gsm
instance KnownCrc Crc3_gsm where
  type CrcWidth Crc3_gsm = 3
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3
    , _crcInitial = 0x0
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x7
    }

data Crc3_rohc
instance KnownCrc Crc3_rohc where
  type CrcWidth Crc3_rohc = 3
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3
    , _crcInitial = 0x7
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0
    }

data Crc4_g_704
instance KnownCrc Crc4_g_704 where
  type CrcWidth Crc4_g_704 = 4
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3
    , _crcInitial = 0x0
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0
    }
type Crc4_itu = Crc4_g_704

data Crc4_interlaken
instance KnownCrc Crc4_interlaken where
  type CrcWidth Crc4_interlaken = 4
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3
    , _crcInitial = 0xf
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xf
    }

data Crc5_epc_c1g2
instance KnownCrc Crc5_epc_c1g2 where
  type CrcWidth Crc5_epc_c1g2 = 5
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x09
    , _crcInitial = 0x09
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }
type Crc5_epc = Crc5_epc_c1g2

data Crc5_g_704
instance KnownCrc Crc5_g_704 where
  type CrcWidth Crc5_g_704 = 5
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x15
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }
type Crc5_itu = Crc5_g_704

data Crc5_usb
instance KnownCrc Crc5_usb where
  type CrcWidth Crc5_usb = 5
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x05
    , _crcInitial = 0x1f
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x1f
    }

data Crc6_cdma2000_a
instance KnownCrc Crc6_cdma2000_a where
  type CrcWidth Crc6_cdma2000_a = 6
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x27
    , _crcInitial = 0x3f
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc6_cdma2000_b
instance KnownCrc Crc6_cdma2000_b where
  type CrcWidth Crc6_cdma2000_b = 6
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x07
    , _crcInitial = 0x3f
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc6_darc
instance KnownCrc Crc6_darc where
  type CrcWidth Crc6_darc = 6
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x19
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc6_g_704
instance KnownCrc Crc6_g_704 where
  type CrcWidth Crc6_g_704 = 6
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x03
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }
type Crc6_itu = Crc6_g_704

data Crc6_gsm
instance KnownCrc Crc6_gsm where
  type CrcWidth Crc6_gsm = 6
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x2f
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x3f
    }

data Crc7_mmc
instance KnownCrc Crc7_mmc where
  type CrcWidth Crc7_mmc = 7
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x09
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc7_rohc
instance KnownCrc Crc7_rohc where
  type CrcWidth Crc7_rohc = 7
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x4f
    , _crcInitial = 0x7f
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc7_umts
instance KnownCrc Crc7_umts where
  type CrcWidth Crc7_umts = 7
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x45
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_autosar
instance KnownCrc Crc8_autosar where
  type CrcWidth Crc8_autosar = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x2f
    , _crcInitial = 0xff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xff
    }

data Crc8_bluetooth
instance KnownCrc Crc8_bluetooth where
  type CrcWidth Crc8_bluetooth = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xa7
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc8_cdma2000
instance KnownCrc Crc8_cdma2000 where
  type CrcWidth Crc8_cdma2000 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x9b
    , _crcInitial = 0xff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_darc
instance KnownCrc Crc8_darc where
  type CrcWidth Crc8_darc = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x39
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc8_dvb_s2
instance KnownCrc Crc8_dvb_s2 where
  type CrcWidth Crc8_dvb_s2 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xd5
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_gsm_a
instance KnownCrc Crc8_gsm_a where
  type CrcWidth Crc8_gsm_a = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_gsm_b
instance KnownCrc Crc8_gsm_b where
  type CrcWidth Crc8_gsm_b = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x49
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xff
    }

data Crc8_hitag
instance KnownCrc Crc8_hitag where
  type CrcWidth Crc8_hitag = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0xff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_i_432_1
instance KnownCrc Crc8_i_432_1 where
  type CrcWidth Crc8_i_432_1 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x07
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x55
    }
type Crc8_itu = Crc8_i_432_1

data Crc8_i_code
instance KnownCrc Crc8_i_code where
  type CrcWidth Crc8_i_code = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0xfd
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_lte
instance KnownCrc Crc8_lte where
  type CrcWidth Crc8_lte = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x9b
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_maxim_dow
instance KnownCrc Crc8_maxim_dow where
  type CrcWidth Crc8_maxim_dow = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x31
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }
type Crc8_maxim = Crc8_maxim_dow

data Crc8_mifare_mad
instance KnownCrc Crc8_mifare_mad where
  type CrcWidth Crc8_mifare_mad = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0xc7
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_nrsc_5
instance KnownCrc Crc8_nrsc_5 where
  type CrcWidth Crc8_nrsc_5 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x31
    , _crcInitial = 0xff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_opensafety
instance KnownCrc Crc8_opensafety where
  type CrcWidth Crc8_opensafety = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x2f
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_rohc
instance KnownCrc Crc8_rohc where
  type CrcWidth Crc8_rohc = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x07
    , _crcInitial = 0xff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc8_sae_j1850
instance KnownCrc Crc8_sae_j1850 where
  type CrcWidth Crc8_sae_j1850 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0xff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xff
    }

data Crc8_smbus
instance KnownCrc Crc8_smbus where
  type CrcWidth Crc8_smbus = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x07
    , _crcInitial = 0x00
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00
    }

data Crc8_tech_3250
instance KnownCrc Crc8_tech_3250 where
  type CrcWidth Crc8_tech_3250 = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1d
    , _crcInitial = 0xff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }
type Crc8_aes = Crc8_tech_3250
type Crc8_etu = Crc8_tech_3250

data Crc8_wcdma
instance KnownCrc Crc8_wcdma where
  type CrcWidth Crc8_wcdma = 8
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x9b
    , _crcInitial = 0x00
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00
    }

data Crc10_atm
instance KnownCrc Crc10_atm where
  type CrcWidth Crc10_atm = 10
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x233
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }
type Crc10_i_610 = Crc10_atm

data Crc10_cdma2000
instance KnownCrc Crc10_cdma2000 where
  type CrcWidth Crc10_cdma2000 = 10
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3d9
    , _crcInitial = 0x3ff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }

data Crc10_gsm
instance KnownCrc Crc10_gsm where
  type CrcWidth Crc10_gsm = 10
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x175
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x3ff
    }

data Crc11_flexray
instance KnownCrc Crc11_flexray where
  type CrcWidth Crc11_flexray = 11
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x385
    , _crcInitial = 0x01a
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }

data Crc11_umts
instance KnownCrc Crc11_umts where
  type CrcWidth Crc11_umts = 11
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x307
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }

data Crc12_cdma2000
instance KnownCrc Crc12_cdma2000 where
  type CrcWidth Crc12_cdma2000 = 12
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xf13
    , _crcInitial = 0xfff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }

data Crc12_dect
instance KnownCrc Crc12_dect where
  type CrcWidth Crc12_dect = 12
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x80f
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000
    }

data Crc12_gsm
instance KnownCrc Crc12_gsm where
  type CrcWidth Crc12_gsm = 12
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xd31
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xfff
    }

data Crc12_umts
instance KnownCrc Crc12_umts where
  type CrcWidth Crc12_umts = 12
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x80f
    , _crcInitial = 0x000
    , _crcReflectInput = False
    , _crcReflectOutput = True
    , _crcXorOutput = 0x000
    }
type Crc12_3gpp = Crc12_umts

data Crc13_bbc
instance KnownCrc Crc13_bbc where
  type CrcWidth Crc13_bbc = 13
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1cf5
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc14_darc
instance KnownCrc Crc14_darc where
  type CrcWidth Crc14_darc = 14
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x0805
    , _crcInitial = 0x0000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc14_gsm
instance KnownCrc Crc14_gsm where
  type CrcWidth Crc14_gsm = 14
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x202d
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x3fff
    }

data Crc15_can
instance KnownCrc Crc15_can where
  type CrcWidth Crc15_can = 15
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x4599
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc15_mpt1327
instance KnownCrc Crc15_mpt1327 where
  type CrcWidth Crc15_mpt1327 = 15
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x6815
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0001
    }

data Crc16_arc
instance KnownCrc Crc16_arc where
  type CrcWidth Crc16_arc = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0x0000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }
type Crc16_ibm = Crc16_arc

data Crc16_cdma2000
instance KnownCrc Crc16_cdma2000 where
  type CrcWidth Crc16_cdma2000 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xc867
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_cms
instance KnownCrc Crc16_cms where
  type CrcWidth Crc16_cms = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_dds_110
instance KnownCrc Crc16_dds_110 where
  type CrcWidth Crc16_dds_110 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0x800d
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_dect_r
instance KnownCrc Crc16_dect_r where
  type CrcWidth Crc16_dect_r = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x0589
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0001
    }

data Crc16_dect_x
instance KnownCrc Crc16_dect_x where
  type CrcWidth Crc16_dect_x = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x0589
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_dnp
instance KnownCrc Crc16_dnp where
  type CrcWidth Crc16_dnp = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3d65
    , _crcInitial = 0x0000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffff
    }

data Crc16_en_13757
instance KnownCrc Crc16_en_13757 where
  type CrcWidth Crc16_en_13757 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x3d65
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffff
    }

data Crc16_genibus
instance KnownCrc Crc16_genibus where
  type CrcWidth Crc16_genibus = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffff
    }
type Crc16_darc = Crc16_genibus
type Crc16_epc = Crc16_genibus
type Crc16_epc_c1g2 = Crc16_genibus
type Crc16_i_code = Crc16_genibus

data Crc16_gsm
instance KnownCrc Crc16_gsm where
  type CrcWidth Crc16_gsm = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffff
    }

data Crc16_ibm_3740
instance KnownCrc Crc16_ibm_3740 where
  type CrcWidth Crc16_ibm_3740 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }
type Crc16_autosar = Crc16_ibm_3740
type Crc16_ccitt_false = Crc16_ibm_3740

data Crc16_ibm_sdlc
instance KnownCrc Crc16_ibm_sdlc where
  type CrcWidth Crc16_ibm_sdlc = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffff
    }
type Crc16_iso_hdlc = Crc16_ibm_sdlc
type Crc16_iso_iec_14443_3_b = Crc16_ibm_sdlc
type Crc16_x25 = Crc16_ibm_sdlc

data Crc16_iso_iec_14443_3_a
instance KnownCrc Crc16_iso_iec_14443_3_a where
  type CrcWidth Crc16_iso_iec_14443_3_a = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xc6c6
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_kermit
instance KnownCrc Crc16_kermit where
  type CrcWidth Crc16_kermit = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0x0000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }
type Crc16_bluetooth = Crc16_kermit
type Crc16_ccitt = Crc16_kermit
type Crc16_ccitt_true = Crc16_kermit
type Crc16_v_41_lsb = Crc16_kermit

data Crc16_lj1200
instance KnownCrc Crc16_lj1200 where
  type CrcWidth Crc16_lj1200 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x6f63
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_m17
instance KnownCrc Crc16_m17 where
  type CrcWidth Crc16_m17 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x5935
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_maxim_dow
instance KnownCrc Crc16_maxim_dow where
  type CrcWidth Crc16_maxim_dow = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0x0000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffff
    }
type Crc16_maxim = Crc16_maxim_dow

data Crc16_mcrf4xx
instance KnownCrc Crc16_mcrf4xx where
  type CrcWidth Crc16_mcrf4xx = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_modbus
instance KnownCrc Crc16_modbus where
  type CrcWidth Crc16_modbus = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0xffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_nrsc_5
instance KnownCrc Crc16_nrsc_5 where
  type CrcWidth Crc16_nrsc_5 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x080b
    , _crcInitial = 0xffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_opensafety_a
instance KnownCrc Crc16_opensafety_a where
  type CrcWidth Crc16_opensafety_a = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x5935
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_opensafety_b
instance KnownCrc Crc16_opensafety_b where
  type CrcWidth Crc16_opensafety_b = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x755b
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_profibus
instance KnownCrc Crc16_profibus where
  type CrcWidth Crc16_profibus = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1dcf
    , _crcInitial = 0xffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffff
    }
type Crc16_iec_61158_2 = Crc16_profibus

data Crc16_riello
instance KnownCrc Crc16_riello where
  type CrcWidth Crc16_riello = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0xb2aa
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_spi_fujitsu
instance KnownCrc Crc16_spi_fujitsu where
  type CrcWidth Crc16_spi_fujitsu = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0x1d0f
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }
type Crc16_aug_ccitt = Crc16_spi_fujitsu

data Crc16_t10_dif
instance KnownCrc Crc16_t10_dif where
  type CrcWidth Crc16_t10_dif = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8bb7
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_teledisk
instance KnownCrc Crc16_teledisk where
  type CrcWidth Crc16_teledisk = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xa097
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }

data Crc16_tms37157
instance KnownCrc Crc16_tms37157 where
  type CrcWidth Crc16_tms37157 = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0x89ec
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000
    }

data Crc16_umts
instance KnownCrc Crc16_umts where
  type CrcWidth Crc16_umts = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }
type Crc16_verifone = Crc16_umts
type Crc16_buypass = Crc16_umts

data Crc16_usb
instance KnownCrc Crc16_usb where
  type CrcWidth Crc16_usb = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8005
    , _crcInitial = 0xffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffff
    }

data Crc16_xmodem
instance KnownCrc Crc16_xmodem where
  type CrcWidth Crc16_xmodem = 16
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1021
    , _crcInitial = 0x0000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000
    }
type Crc16_acorn = Crc16_xmodem
type Crc16_lte = Crc16_xmodem
type Crc16_v_41_msb = Crc16_xmodem
type Crc16_zmodem = Crc16_xmodem

data Crc17_can_fd
instance KnownCrc Crc17_can_fd where
  type CrcWidth Crc17_can_fd = 17
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1685b
    , _crcInitial = 0x00000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00000
    }

data Crc21_can_fd
instance KnownCrc Crc21_can_fd where
  type CrcWidth Crc21_can_fd = 21
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x102899
    , _crcInitial = 0x000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_ble
instance KnownCrc Crc24_ble where
  type CrcWidth Crc24_ble = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x00065b
    , _crcInitial = 0x555555
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x000000
    }

data Crc24_flexray_a
instance KnownCrc Crc24_flexray_a where
  type CrcWidth Crc24_flexray_a = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x5d6dcb
    , _crcInitial = 0xfedcba
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_flexray_b
instance KnownCrc Crc24_flexray_b where
  type CrcWidth Crc24_flexray_b = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x5d6dcb
    , _crcInitial = 0xabcdef
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_interlaken
instance KnownCrc Crc24_interlaken where
  type CrcWidth Crc24_interlaken = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x328b63
    , _crcInitial = 0xffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffff
    }

data Crc24_lte_a
instance KnownCrc Crc24_lte_a where
  type CrcWidth Crc24_lte_a = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x864cfb
    , _crcInitial = 0x000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_lte_b
instance KnownCrc Crc24_lte_b where
  type CrcWidth Crc24_lte_b = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x800063
    , _crcInitial = 0x000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_openpgp
instance KnownCrc Crc24_openpgp where
  type CrcWidth Crc24_openpgp = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x864cfb
    , _crcInitial = 0xb704ce
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x000000
    }

data Crc24_os_9
instance KnownCrc Crc24_os_9 where
  type CrcWidth Crc24_os_9 = 24
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x800063
    , _crcInitial = 0xffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffff
    }

data Crc30_cdma
instance KnownCrc Crc30_cdma where
  type CrcWidth Crc30_cdma = 30
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x2030b9c7
    , _crcInitial = 0x3fffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x3fffffff
    }

data Crc31_philips
instance KnownCrc Crc31_philips where
  type CrcWidth Crc31_philips = 31
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0x7fffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x7fffffff
    }

data Crc32_aixm
instance KnownCrc Crc32_aixm where
  type CrcWidth Crc32_aixm = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x814141ab
    , _crcInitial = 0x00000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00000000
    }

data Crc32_autosar
instance KnownCrc Crc32_autosar where
  type CrcWidth Crc32_autosar = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xf4acfb13
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffff
    }

data Crc32_base91_d
instance KnownCrc Crc32_base91_d where
  type CrcWidth Crc32_base91_d = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xa833982b
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffff
    }

data Crc32_bzip2
instance KnownCrc Crc32_bzip2 where
  type CrcWidth Crc32_bzip2 = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0xffffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffffff
    }
type Crc32_aal5 = Crc32_bzip2
type Crc32_dect_b = Crc32_bzip2

data Crc32_cd_rom_edc
instance KnownCrc Crc32_cd_rom_edc where
  type CrcWidth Crc32_cd_rom_edc = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x8001801b
    , _crcInitial = 0x00000000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00000000
    }

data Crc32_cksum
instance KnownCrc Crc32_cksum where
  type CrcWidth Crc32_cksum = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0x00000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffffff
    }
type Crc32_posix = Crc32_cksum

data Crc32_iscsi
instance KnownCrc Crc32_iscsi where
  type CrcWidth Crc32_iscsi = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x1edc6f41
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffff
    }
type Crc32_base91_c = Crc32_iscsi
type Crc32_castagnoli = Crc32_iscsi
type Crc32_interlaken = Crc32_iscsi

data Crc32_iso_hdlc
instance KnownCrc Crc32_iso_hdlc where
  type CrcWidth Crc32_iso_hdlc = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffff
    }
type Crc32_adccp = Crc32_iso_hdlc
type Crc32_v_42 = Crc32_iso_hdlc
type Crc32_xz = Crc32_iso_hdlc
type Crc32_pkzip = Crc32_iso_hdlc
type Crc32_ethernet = Crc32_iso_hdlc

data Crc32_jamcrc
instance KnownCrc Crc32_jamcrc where
  type CrcWidth Crc32_jamcrc = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00000000
    }

data Crc32_mef
instance KnownCrc Crc32_mef where
  type CrcWidth Crc32_mef = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x741b8cd7
    , _crcInitial = 0xffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x00000000
    }

data Crc32_mpeg_2
instance KnownCrc Crc32_mpeg_2 where
  type CrcWidth Crc32_mpeg_2 = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x04c11db7
    , _crcInitial = 0xffffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00000000
    }

data Crc32_xfer
instance KnownCrc Crc32_xfer where
  type CrcWidth Crc32_xfer = 32
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x000000af
    , _crcInitial = 0x00000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x00000000
    }

data Crc40_gsm
instance KnownCrc Crc40_gsm where
  type CrcWidth Crc40_gsm = 40
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x0004820009
    , _crcInitial = 0x0000000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffffffff
    }

data Crc64_ecma_182
instance KnownCrc Crc64_ecma_182 where
  type CrcWidth Crc64_ecma_182 = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x42f0e1eba9ea3693
    , _crcInitial = 0x0000000000000000
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0x0000000000000000
    }

data Crc64_go_iso
instance KnownCrc Crc64_go_iso where
  type CrcWidth Crc64_go_iso = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x000000000000001b
    , _crcInitial = 0xffffffffffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffffffffffff
    }

data Crc64_ms
instance KnownCrc Crc64_ms where
  type CrcWidth Crc64_ms = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x259c84cba6426349
    , _crcInitial = 0xffffffffffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000000000000000
    }

data Crc64_redis
instance KnownCrc Crc64_redis where
  type CrcWidth Crc64_redis = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0xad93d23594c935a9
    , _crcInitial = 0x0000000000000000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x0000000000000000
    }

data Crc64_we
instance KnownCrc Crc64_we where
  type CrcWidth Crc64_we = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x42f0e1eba9ea3693
    , _crcInitial = 0xffffffffffffffff
    , _crcReflectInput = False
    , _crcReflectOutput = False
    , _crcXorOutput = 0xffffffffffffffff
    }

data Crc64_xz
instance KnownCrc Crc64_xz where
  type CrcWidth Crc64_xz = 64
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x42f0e1eba9ea3693
    , _crcInitial = 0xffffffffffffffff
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0xffffffffffffffff
    }
type Crc64_ecma = Crc64_xz

data Crc82_darc
instance KnownCrc Crc82_darc where
  type CrcWidth Crc82_darc = 82
  crcParams _ dataWidth = CrcParams
    { _crcWidth = SNat
    , _crcDataWidth = dataWidth
    , _crcPolynomial = 0x0308c0111011401440411
    , _crcInitial = 0x000000000000000000000
    , _crcReflectInput = True
    , _crcReflectOutput = True
    , _crcXorOutput = 0x000000000000000000000
    }
