if [ -n "$LBNE_VERBOSE" ]; then
  echo Setting up PRODUCTS for FNAL
fi
if [ -r /grid/fermiapp/products ]; then
  source /grid/fermiapp/products/setups.sh
  source /grid/fermiapp/products/larsoft/setup
  source /grid/fermiapp/products/dune/setup_dune.sh
else if [ -n "$PRODUCTS" -a -r $PRODUCTS ]; then
  source $PRODUCTS/setups
else
  echo duneinit.sh: ERROR: UPS directory not found
  echo Either PRODUCTS must be defined or /grid/fermiapp/products must be present
fi; fi
setup git
setup gitflow
setup mrb
export MRB_PROJECT=larsoft
if [ -n "$LBNE_VERBOSE" ]; then
  type mrbsetenv
  type setup
  echo Finished setting up PRODUCTS for FNAL
fi
