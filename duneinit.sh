# duneinit.sh
#
# David Adams
# Updated September 2015
#
if [ -n "$DUNE_VERBOSE" ]; then
  echo Setting up PRODUCTS for FNAL
fi
if [ -z "$PRODUCTS" ]; then
  PRODUCTS=/grid/fermiapp/products
fi
if [ -r $PRODUCTS ]; then
  if [ $PRODUCTS = /grid/fermiapp/products ]; then
    source /grid/fermiapp/products/setups.sh
    source /grid/fermiapp/products/larsoft/setup
    source /grid/fermiapp/products/dune/setup_dune.sh
  else
    source $PRODUCTS/setups
  fi
  FLAVOR=`ups flavor`
  # On Linux, we set up git to get FNAL-preferred version.
  # on Darwin, we need patch to getopt.
  if echo $FLAVOR | grep -q ^Linux; then
    setup git
  else if echo $FLAVOR | grep -q ^Darwin; then
    setup getopt v1_1_6
  else
    echo duneinit.sh: WARNING: Unknown UPS flavor: $FLAVOR
  fi; fi
  setup gitflow
  setup mrb
  export MRB_PROJECT=larsoft
  if [ -n "$DUNE_VERBOSE" ]; then
    type mrbsetenv
    type setup
    echo duneinit.sh: Finished setting up PRODUCTS for FNAL
  fi
else
  echo duneint.sh: ERROR: Products directory is not readable: $PRODUCTS
fi
