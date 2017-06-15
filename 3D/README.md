# KiCad Libraries

## Creating 3D Components

To create a new 3D component:

Using OpenSCAD (Based on http://happyrobotlabs.com/posts/tutorials/tutorial-3d-kicad-parts-using-openscad-and-wings3d/):
1) Create the part in OpenSCAD
2) Compile it, then export as a .stl
3) Run meshconv on the file:
    ./meshconv -c stl Path/To/Part-scad.stl -o Path/To/Part-wings
4) Import the new .stl into Wings3D and do the material changing
5) Export as a .wrl file
6) Copy the .wrl file into the 3D folder from its source folder


## 3D Part Models

Batteries:
 * Memory Protection Devices CR2032 Holder (Digikey #: BC2032-F1-ND)

Connectors:
 * 1x6 0.1" female right angle
 * 2x6 0.1" female right angle
 * 1x6 0.1" male right angle
 * 1x6 0.1" male right angle
 * 2.1mm DC Barrel jack (CUI PJ-202A)
 * Deans Plug
 * Micro Deans Plug
 * DIN - Vertical - CUI SD-50BV
 * DIN - Right Angle - CUI SDS-50J 
 * SNES Controller
 * Molex MiniFit Jr 3 pin right angle
 * Samtec 2x15 Thru-hole TFM-115-01-F-D-A
 * uSD card slot - Amphenol (Digikey #: 101-00303-68-1-ND)
 * Testpoint

LEDs:
 * 1206 Surface Mount

Sensors:
 * Sharp GP1A57HRJ00F Photo Interrupter
 * Antenova M2M M10382 GPS Module

SMD:
 * D2PACK
 * 0805
 * 1206
 * 2010
 * HC-49 Surface Mount Crystal
 * No Lead - 3.15mm x 3.15mm x 0.80mm
 * No Lead - 3.00mm x 5.00mm x 1.00mm
 * No Lead - 4.00mm x 4.00mm x 1.00mm
 * No Lead - 10.0mm x 10.0mm x 1.29mm
 * SOIC 8  - 4.0mm x 5.0mm - Pitch: 1.27mm
 * SOIC 8  - 4.0mm x 5.8mm  - Pitch: 1.27mm
 * SOT-23-3
 * SOT-23-5
 * SOT-23-6
 * SOT-363
 * SSOP 8  - 3.0mm x 2.0mm - Pitch: 0.50mm
 * SSOP 8  - 3.0mm x 3.0mm - Pitch: 0.65mm
 * SSOP 20 - 4.5mm x 6.6mm - Pitch: 0.65mm

Solarcells:
 * Solarcells - Spectrolab TASC1
 * Solarcells - Spectrolab TASC2
 * Solarcells - Spectrolab 26.62 sq-cm CIC

Switches:
 * DIP - SMD - 3 position - CK SDA03H0SBD (Digikey #: CKN6060-ND)
 * DPST - Eswitch EG2207 (Digikey #: EG1940-ND)
 * DPST - TE SSJ12R04 (Digikey #: 450-1635-ND)

