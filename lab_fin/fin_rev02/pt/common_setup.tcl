set DESIGN_NAME top
set DESIGN_REF_DATA_PATH "../syn"

set ADDITIONAL_SEARCH_PATH "$DESIGN_REF_DATA_PATH/net $DESIGN_REF_DATA_PATH/scr \
	pt_scr /tools/edk/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models"

set TARGET_LIBRARY_FILES "saed90nm_max.db"
set ADDITIONAL_LINK_LIB_FILES ""
