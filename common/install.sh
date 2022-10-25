
WIFICFG="$(find /system /vendor /system_ext /product /odm /my_product -type f -name "WCNSS_qcom_cfg*.ini")"
WIFICFG2="$(find /system /vendor /system_ext /product /odm /my_product -type f -name "xtwifi.conf")"
WIFICFG3="$(find /system /vendor /system_ext /product /odm /my_product -type f -name "icm.conf")"
mkdir -p $MODPATH/tools
cp -f $MODPATH/common/addon/External-Tools/tools/$ARCH32/* $MODPATH/tools/

ui_print " "
ui_print "->[Please Wait...]<-"
ui_print " "


  for OCFG2 in ${WIFICFG2}; do
	CFG2="$MODPATH$(echo $OCFG2 | sed "s|^/vendor|/system/vendor|g" | sed "s|^/system_ext|/system/system_ext|g" | sed "s|^/product|/system/product|g" | sed "s|^/my_product|/system/my_product|g" | sed "s|^/odm|/system/vendor/odm|g")"
	cp_ch $ORIGDIR$OCFG2 $CFG2
	sed -i 's/\t/  /g' $CFG2
	sed -i 's/<!--.*-->//; /<!--/,/-->/d; /^ *#/d; /^ *$/d' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = 1/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = 2/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = 3/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = 4/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = 5/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i 's/DEBUG_GLOBAL_LOG_LEVEL = ALL/DEBUG_GLOBAL_LOG_LEVEL = 0/g' $CFG2
	sed -i '/^ *#/d; /^ *$/d' $CFG2
	done
