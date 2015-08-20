# dune-larrel
 
David Adams  
August 2015

Package to create dunetpc releases.

Use "larrel -h" to see available options.

# Example session

```
# Installing this package
# Package is installed at PKGDIR = PKGPATH/dune-larrel
cd PKGPATH
git clone https://github.com/dladams/dune-larrel
# or
git clone ssh://git@github.com/dladams/dune-larrel


# Creating and building a development area.
# SW is installed an built in dedicated directory DEVDIR.
# This also initializes the session
mkdir DEVDIR
cd DEVDIR
source PKGDIR/setup.sh

# Set the release for larsoft.
larrel -o v04_20_00

# Set the release for dunetpc.
larrel -n v04_20_00

# Check out, udate version, build and test.
larrel -rdcvbt

# End flow and push changes back to repository.
# The develop and master branches are updated and a new
# tag is created using the dunetpc version.
larrel -lp

# Build the product from the new tag.
# Tar file will be in workdir/reldir/build*
larrel -u

# Or to build with a specific qualifier:
larrel -uq e7:debug

# Informational commands
upslist larsoft
upslist dunetpc
larrel -s gitstatus
larrel -s gitdiff
larrel -s localbranches
larrel -s remotebranches
larrel -s localtags
larrel -s remotetags
