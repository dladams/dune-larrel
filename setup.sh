THISNAME=${BASH_SOURCE[@]}
THISFILE=`readlink -f $THISNAME`
THISDIR=`dirname $THISFILE`
echo Setting up larrel at $THISDIR
larrel() { $THISDIR/larrel "$@"; }
alias upslist=$THISDIR/upslist
