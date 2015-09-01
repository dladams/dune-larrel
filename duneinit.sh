if [ -n "$LBNE_VERBOSE" ]; then
  echo Setting up PRODUCTS for FNAL
fi
source /grid/fermiapp/products/setups.sh
source /grid/fermiapp/products/larsoft/setup
source /grid/fermiapp/products/dune/setup_dune.sh
setup git
setup gitflow
setup mrb
export MRB_PROJECT=larsoft
if [ -n "$LBNE_VERBOSE" ]; then
  type mrbsetenv
  type setup
  echo Finished setting up PRODUCTS for FNAL
fi
