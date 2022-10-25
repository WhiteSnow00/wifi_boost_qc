#!/system/bin/sh
MODDIR=${0%/*}

mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg.ini /odm/vendor/etc/wifi/WCNSS_qcom_cfg.ini
mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg.ini /odm/etc/wifi/WCNSS_qcom_cfg.ini
mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg_cmcc.ini /odm/vendor/etc/wifi/WCNSS_qcom_cfg_cmcc.ini
mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg_cmcc.ini /odm/etc/wifi/WCNSS_qcom_cfg_cmcc.ini
mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg_roam.ini /odm/vendor/etc/wifi/WCNSS_qcom_cfg_roam.ini
mount -o bind $MODPATH/system/vendor/odm/etc/wifi/WCNSS_qcom_cfg_roam.ini /odm/etc/wifi/WCNSS_qcom_cfg_roam.ini

mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg.ini /my_product/etc/wifi/WCNSS_qcom_cfg.ini
mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg.ini /my_product/vendor/etc/wifi/WCNSS_qcom_cfg.ini
mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg_cmcc.ini /my_product/etc/wifi/WCNSS_qcom_cfg_cmcc.ini
mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg_cmcc.ini /my_product/vendor/etc/wifi/WCNSS_qcom_cfg_cmcc.ini
mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg_roam.ini /my_product/etc/wifi/WCNSS_qcom_cfg_roam.ini
mount -o bind $MODPATH/system/my_product/etc/wifi/WCNSS_qcom_cfg_roam.ini /my_product/vendor/etc/wifi/WCNSS_qcom_cfg_roam.ini
