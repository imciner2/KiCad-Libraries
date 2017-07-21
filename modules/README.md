# KiCad Libraries - Footprint Modules

This directory contains the footprint modules for this KiCad library. All the footprints in this library are designed to be hand-solderable.

The footprints contained in these libraries follow the standards outlined in the master standards file for the repository: [Standards](../LibraryStandards.md)

# Library Listing

* [Batteries](#batteries)
* [Capacitors](#capacitors)
* [Connectors](#connectors)
* [Digilent](#digilent)
* [Diodes](#diodes)
* [Graphics](#graphics)
* [Inductors](#inductors)
* [LEDs](#leds)
* [Modules](#modules)
* [PTH](#pth)
* [Resistors](#resistors)
* [Sensors](#sensors)
* [SMD](#smd)
* [Solarcells](#solarcells)
* [Switches](#switches)
* [Transistors](#transistors)

Note: DK means the digikey part number.

## Batteries:

Footprints for Various battery holders.
 
| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| BATT_BH2AA-PC | 2 AA Battery Holder, Memory Protection Devices | DK: BH2AA-W-ND |
| BATT_CR2032_MPD | CR2032 Holder, Memory Protection Devices | DK: BC2032-F1-ND |
| BATT_CR2032_TE | CR2032 Holder, Tyco Electronics | DK: A99327CT-ND |
 
## Capacitors:

Footprints for various capacitors.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| RADIAL_*lead*_*diam* | Thru-hole Radial Capacitors, lead spacing of *lead*, diameter of *diam* | |
| SMD_POL_*package*_*size* | SMD capacitor, package type is *package*, length/width is *size* | |
 
## Connectors:

Footprints for various connectors.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| CONN_2.0mm_1x* | Single row 2mm pitch headers (4 pins per row) | |
| CONN_2.54mm_1x* | Single row 0.1in (2.54mm) pitch headers (1-9 pins per row), friction fit capable (offset holes to hold header in with no solder) | |
| CONN_2.54mm_2x* | Double row 0.1in (2.54mm) pitch headers (2-9, 15, 17 pins per row) | |
| DB9_RT_SLIM | Slim fit DB-9 right angle connector | |
| DC_2.1mm_CUI-PJ-202A | DC Barrel Jack, 2.1mm diameter | DK: PJ-202A-ND |
| DEANS | Fullsize Deans plug connector | [Manufacturer](http://wsdeans.com/products/plugs/ultra_plug.html) |
| DEANS_Micro | Micro Deans plug connector | [Manufacturer](http://wsdeans.com/products/plugs/micro_plug.html) |
| DIN_CUI_SD-50BV | 5 pin DIN connector, vertical | DK: CP-3150-ND |
| DIN_CUI_SDS-50J | 5 pin DIN connector, horizontal | DK: CP-2350-ND |
| GAMING_SNES | SNES controller connector | [Manufacturer](http://www.raphnet-tech.com/products/snes_controller_connector/index.php) |
| JST_2.0mm_1x* | JST 2.0mm pitch connectors | |
| MICRO_SD_HINGE_AMP | Hinged uSD card slot | DK: 101-00303-68-1-ND |
| MOLEX_MINI-FIT-JR_3_PTH_RT_PEG | 3 pin right angle thru-hole Molex Mini-Fit Jr connector | |
| MOLEX_MINI-FIT-JR_3_PTH_VERT | 3 pin vertical thru-hole Molex Mini-Fit Jr connector | |
| SAMTEC_TFM-115-01-F-D-A | Samtec 2x15 (30 position) 0.05in (1.27mm) pitch thru-hole header | DK: SAM8700-ND |
| TESTPOINT_063 | Single testpoint, 0.063in hole diameter | |

## Digilent:

Footprints for the board connector specifications proposed by Digilent inc. (such as the PMOD connector).

| Component | Description |
| --------- | ----------- |
| PMOD_DOUBLE_FEMALE | Double row female PMOD connector (0.1in pitch, 2x6) |
| PMOD_DOUBLE_MALE | Double row male PMOD connector (0.1in pitch, 2x6) |
| PMOD_SINGLE_FEMALE | Single row female PMOD connector (0.1in pitch, 1x6) |
| PMOD_SINGLE_MALE | Single row male PMOD connector (0.1in pitch, 1x6) |

## Diodes:

Footprints for various diode packages.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| DIODE_DFN1006 | Leadless diode package (1mm x 0.6mm x 0.48mm body) | |
| DIODE_DO214AB-SMC | SMC size surface mount diode package (8.2mm x 6.3mm x 2.7mm body) | |
| DIODE_SOT23-3 | 3-pin SOT23 diode package (Cathode on pin 3, Anode on pin 1) | |

## Graphics:

Various silkscreen graphics for circuit boards.

| Component | Description |
| --------- | ----------- |
| AXIS_Z-DOWN | Axis indicator for a right-handed system with the Z axis going through the board |
| AXIS_Z-UP | Axis indicator for a right-handed system with the Z axis going up from the board |

## Inductors:

Footprints for various inductors.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| IND_BOURNS_SRP1238A | Bourns SRP1238A shielded inductor series | [Manufacturer](http://www.bourns.com/docs/Product-Datasheets/srp1238a.pdf) |

## LEDs:

Footprints specifcally for LEDs.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| LED_1206 | 1206 Surface Mount LED (1206 footprint with special 3D model) | |

## Modules:

Footprints for various OEM modules.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| ADAFRUIT_FEATHER | Adafruit Feather Board | [Manufacturer](https://www.adafruit.com/feather) |
| ESP-12S | ESP8266 WiFI module with integrated antenna | [Datasheet](https://www.elecrow.com/download/ESP-12S_User_Manual.pdf) |
| PS_CUI_VSK-S20 | CUI VSK-20 AC-DC Power Supply, Thru-hole | [Manufacturer](http://www.cui.com/product/resource/vsk-s20.pdf) |
| PS_RECOM_RAC15 | Recom RAC15 AC-DC Power Supply, Thru-hole | [Manufacturer](https://www.recom-power.com/pdf/Powerline-AC-DC/RAC15-S_D_TA.pdf) |
| SYNAPSE_SM200_SMD | Synapse SNAP wireless module, SM200 | [Manufacturer](http://info.synapse-wireless.com/rf-module-sm200pu1) |
| SYNAPSE_PTH | Synapse SNAP wireless module, thru-hole part | |
| XBEE_PTH | Digi XBee wireless module, thru-hole | |
| XBBE_PRO_PTH | Digi XBee-Pro wireless module, thru-hole | |

## PTH:

Footprints for various thru-hole devices.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| TO220_HORIZ | TO-220 Package, horizontal mount with screw mount hole | |

## Resistors:

Footprints for resistors.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| RES_D2PACK | D2pack resistor footprint | |

## Sensors:

Footprints for various sensors.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| ANTENOVA_M10382 | Antenova M10382 GPS Receiver | [Manufacturer](http://www.antenova-m2m.com/wp-content/uploads/2015/11/M10382_11MD-0043-5-PS.pdf) |
| HONEYWELL_HIH_5030 | Honeywell HIH 5030 Humidity Sensor | [Manufacturer](https://sensing.honeywell.com/index.php?ci_id=49692) |
| SHARP_GP1A57HRJ00F | Sharp GP1A57HRJ00F Photo Interrupter | 425-1935-5-ND |


## SMD:

Footprints for various SMD components not in other libraries.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| D2PACK | D2Pack | |
| HC-49SM | HC-49SM crystal | |
| LGA_* | LGA footprints, named using the library naming convention | |
| SMD_0805-SPLIT | 0805 component with a split pad (will br bridged when a component is soldered to it) | |
| SMD_0805_FOURPOST | 0805 component with 4 pads (one on each corner) | Fits the [ATB Baluns](https://product.tdk.com/info/en/documents/data_sheet/rf_balun_atb2012_en.pdf) |
| SMD_0805 | 0805 passive device pad | |
| SMD_1206 | 1206 passive device pad | |
| SMD_2010 | 2010 passive device pad | |
| SOIC_* | SOIC (Small Outline Integrated Circuit) footprints, named using the library naming convention | |
| SON_* | SON (Small Outline No-Lead) footprints, named using the library naming convention | |
| SOT_* | SOT (Small Outline Transistor) footprints (3, 5, 6 pins) | |
| SSOP_* | SSOP (Shrink Small Outline Package) footprints, named using the library naming convention | |

## Solarcells:

Footprints for various solarcells.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| SPECTROLAB_CIC_26.62 | Spectrolab CIC cell | [Manufacturer](http://www.spectrolab.com/cic.htm) |
| SPECTROLAB_TASC1 | Spectrolab TASC cell, direction 1 (discontinued) | [Manufacturer](http://www.spectrolab.com/DataSheets/PV/PV_NM_TASC_ITJ.pdf) |
| SPECTROLAB_TASC2 | Spectrolab TASC cell, direction 2 (discontinued) | [Manufacturer](http://www.spectrolab.com/DataSheets/PV/PV_NM_TASC_ITJ.pdf) |

## Switches:

Footprints for various switches.

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| DIP_3_CK_SDA03H0SBD_SMD | 3 position SMD DIP switch | DK: CKN6060-ND |
| DPDT_ESWITCH_EG2207 | DPDT switch, Eswitch EG2207 | DK: EG1940-ND |
| DPST_TE_SSJ12R04 | DPST switch, TE SSJ12R04 | DK: 450-1635-ND |

## Transistors:

| Component | Description | More Information |
| --------- | ----------- | --------------------------|
| TRANS_SOT-23-3_BEC | 3-pin SOT23 package (Base on pin 1, Emitter on pin 2, Collector on pin 3) | |
| TRANS_SOT-23-3_GSD | 3-pin SOT23 package (Gate on pin 1, Source on pin 2, Drain on pin 3) | |
| TRANS_SO_4.0mm_1.27mm_8 | 8-pin SO package (Gate on pin 4, Source on pins 1-3, Drain on pins 5-8) | |
