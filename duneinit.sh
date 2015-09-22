if [ -n "$LBNE_VERBOSE" ]; then
  echo Setting up PRODUCTS for FNAL
fi
source /grid/fermiapp/products/setups.sh
source /grid/fermiapp/products/larsoft/setup
source /grid/fermiapp/products/dune/setup_dune.sh
FLAVOR=`ups flavor`
if echo $FLAVOR | grep ^Linux; then
  setup git
else if echo $FLAVOR | grep ^Darwin; then
  setup getopt v1_1_6
else
  echo duneinit.sh: WARNING: Unknown UPS flavor: $FLAVOR
fi; fi
setup gitflow
setup mrb
export MRB_PROJECT=larsoft
if [ -n "$LBNE_VERBOSE" ]; then
  type mrbsetenv
  type setup
  echo Finished setting up PRODUCTS for FNAL
fi
