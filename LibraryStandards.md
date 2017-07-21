# Library Standards

* [Schematic Symbol Standards](#schematic-symbol-standards)
  * [Text](#text)
  * [Pins](#text)
* [Footprint Standards](#footprint-standards)
  * [Pad Design](#pad-design)
  * [Text](#text-1)
  * [Naming Convention](#naming-convention)


----------------------------------------------------------------------------

# Schematic Symbol Standards

## Text

| Text Width | Text Height |
| ---------- | ----------- |
| 0.040 in   | 0.040 in    |

## Pins

The length of a pin should be 0.100 in.

----------------------------------------------------------------------------

# Footprint Standards

## Pad Design

For PTH parts:
* Pad 1 should be a square pad, all others should be round unless required
* Annular ring size should be 1.778mm (0.007in)


## Text

The text fields that should be included on the part are:
* Reference is on Front Silk Screen and is visible, starting value of REF**
* Value is on Front Silk Screen and is invisible, starting value of the footprint name

All text should have the following properties

| Width  | Height | Thickness | 
| ------ | ------ | --------- |
| 1mm    | 1mm    | 0.2mm     |


## Naming Convention

Note: Every field is separated by an underscore.

### Generic Connectors:

| Field | Text                                                   |
| ----- | ------------------------------------------------------ |
| 1     | CONN                                                   |
| 2     | Pin spacing (in mm)                                    |
| 3     | Number of rows & pins in a row (ie rows x num in rows) |

Example: CONN_2.54mm_1x4

### Specific Connectors:

| Field | Text                       |
| ----- | -------------------------- |
| 1     | Connector Type (optional)  |
| 2     | Manufacturer's Name        |
| 3     | Manufacturer's part number |

Example (with type): DC_2.1mm_CUI-PJ-202A

Example (no type)  : SAMTEC_TFM-115-01-F-D-A


### Surface mount components:

| Field | Text                                    |
| ----- | --------------------------------------- |
| 1     | Chip's pacakge label                    |
| 2     | Total number of pins on the chip        |
| 3     | Width of the chip (the plastic casing)  |
| 4     | Length of the chip (the plastic casing) |
| 5     | Pitch of the pins                       |
| 6     | Additional notation about the package   |

Example: SSOP_20_4.5mm_6.6mm_0.65mm_PWP
