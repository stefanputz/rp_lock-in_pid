# Red Pitaya Lock-in+PID Application
```diff
- Updated from original version with one PID added
- PIDA, PIDB and PIDC outputs are possbile inputs for PID's, all PID outputs have arbitrary offsets pm 1 V under more options
- only slow outputs 3 and 4 working!
```
## Lock-in and PID application for RedPitaya enviroment

This is an application build for the [Red Pitaya STEMlab 125-14](https://www.redpitaya.com/) board (RP).
The board is closed-hardware and open-software. You can buy the board and build your own software.

If you have a RP board you can install the **Lock-in+PID** application
by copying the `lock_in+pid` folder (that comes with this tar/zip file) to the
`/opt/redpitaya/www/apps` folder (inside the RP).

For more information about installing procedure, refer to:
https://marceluda.github.io/rp_lock-in_pid/TheApp/install/


## The Lock-in+PID project
The project is hosted in: https://marceluda.github.io/rp_lock-in_pid

There you can find documentation about use and building of the app, and
some suggested applications.

# Compile / implementation HELP

Run on terminal:

$ source settings.sh
$ make

Or form App folder `lock_in+pid` :

$ source ../settings.sh

and then...

For web controller C code compiling:
$ make app

For FPGA implementation:
$ make fpga

For zip packaging
$ mkdir -p ../archive
$ make zip

For tar.gz packaging
$ mkdir -p ../archive
$ make tar

For cleaning:
$ make clean       # clean all
$ make clean_app   # clean only C objects
$ make clean_fpga  # clean only FPGA implementation temp files and .bin

# Upload App to Red Pitaya device

UnZip / UnTar the App folder. Execute from terminal:

$ ./upload_app.sh rp-XXXXXX.local

Replace `rp-XXXXXX.local` by your RP localname or IP address

Also, you can use your own SSH client and upload the lock_in+pid folder the the
RedPiaya folder: `/opt/redpitaya/www/apps`
