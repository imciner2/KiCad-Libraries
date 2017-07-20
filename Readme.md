# KiCad Libraries

A library containing Kicad schematic symbols, footprints, and project templates.

- - -
## License

<div align="center"><a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /></div>

This library is licensed under the Creative Commons BY-SA 4.0 license. The full legal text of the license may be found in the [License](LICENSE.txt) file in this repository. For more information about this license, please visit the Creative Commons Foundation (http://creativecommons.org/licenses/by-sa/4.0/).

- - -
## Using this library

There are 2 ways to use this library: 

1. Copy files locally into project directory (such as by making a Git Subtree)
2. Make a reference to this git repository inside the project (such as by making a Git Submodule)

Both of these methods are discussed in their respective files:

1. [Git Subtrees](UsingGitSubtree.md)
2. [Git Submodules](UsingGitSubmodule.md)

### 3D Parts

In order to view the 3D parts that accompany the footprints, you must add an environment variable called KISYS3DMOD. If it has not been created, this variable points to the location of the preinstalled 3D models. To use these models and the ones in this repo, simply place both paths in the environment variable.

Note: The path should be to the root of the repository, not the 3D directory.

To add this in Linux (and remove existing models), add these two lines to the .bashrc file

```
# Add an environment variable to add the GitHub KiCad 3D models
export KISYS3DMOD='*path/to/github/directory*'
```

### Templates

In order to use the templates contained in this folder, you must add an environment variable called KICAD_PTEMPLATES. This will create a page in the Kicad template selector for "Portable Templates".

Note: Templates must be specified on the end of the environment variable

To add this in Linux, simply add these two lines to the .bashrc file

```
# Add an environment variable to add the GitHub KiCad templates
export KICAD_PTEMPLATES='*path/to/github/directory*/Templates'
```

## Schematic Library Contents

DataStorage - 
 * SD Card
 * uSD Card

Microprocessors - 
 * Sparkfun Atmega 32U4 Breakout Board
 * Microchip PIC18F27J13
 * Microchip PIC32MX340F512H
 * Texas Instruments MSP430G2553 (20, 28, 32 pin versions)

MiscellaneousDevices - 
 * 74LVC1G374  D-type Latch
 * Bridge Rectifier
 * Split Terminal Capacitor
 * LM2937 Voltage Regulator
 * LM317 Voltage Regulator + Heatsink Pin
 * SPDT Relay
 * 3-switch SPST DIP Switch
 * DPDT Switch
 * DPST Switch
 * SPDT Switch
 * SPST Switch
 * Current Transformer
 * Texas Instruments INA333 Instrumentation Amplifier
 * Texas Instruments TS63061 Buck/Boost regulator
 * AC/DC Dual Rail Convertor
 * AC/DC Single Rail Convertor
 * Linear Regulator (Generic symbol for any 3-pin regulator)
 * 18x2 connector
 * Differential Communications Receiver
 * TI DAC5311 8-bit digital-to-analog converter
 * Analog Devices ADA4805-1 low power/shutdown controller operational amplifier
 * TI LM3481 DC/DC low-side NFET converter controller
 * CubeSat Kit 52-pin dual row header
 * Adafruit Feather Board

RF_OEM_Parts - 
 * RFD900
 * SL1204 GPS Antenna
 * Synapse S200
 * Synapse RF300
 * XBee

Sensors - 
 * Analog Devices ADXL345 3-axis Accelerometer
 * Sparkfun Honeywell HMC6352 3-axis magnetometer breakout
 * InvenSense MPU9150 9-dof IMU
 * SkyTraq Venus638 GPS Receiver
 * Antenova M2M M10382 GPS Receiver
 * Honeywell HIH-5030/5031 Humidity Sensor
 * ST Micro LPS331 Pressure Sensor

TransistorParts - 
 * 3-Terminal (GDS) PMOS
 * 3-Terminal (GDS) NMOS
 * NMOST+PMOS in one package
 * NPN+PNP in one package
 * Dual NMOS in one package
 * NMOS with body diode
 * PMOS with body diode
