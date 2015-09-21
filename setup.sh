THISNAME=${BASH_SOURCE[@]}
THISDIR=$(echo "${THISNAME%/*}")
THISDIR=$(cd "$THISDIR" && echo "$(pwd -P)")
echo Setting up larrel at $THISDIR
larrel() { $THISDIR/larrel "$@"; }
alias upslist=$THISDIR/upslist
