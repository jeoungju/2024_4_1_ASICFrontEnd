set REPORTS_DIR "reports"
file mkdir $REPORTS_DIR

set search_path ". $ADDITIONAL_SEARCH_PATH $search_path"
set target_library $TARGET_LIBRARY_FILES
set link_path "* $target_library $ADDITIONAL_LINK_LIB_FILES"

set NETLIST_FILES top_net.v

