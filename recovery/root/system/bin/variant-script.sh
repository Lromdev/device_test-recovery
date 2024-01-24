#!/system/bin/sh
# This script is needed to automatically set device props.

load_fog()
{
    resetprop "ro.product.model" "Redmi 10C"
    resetprop "ro.product.name" "fog"
    resetprop "ro.build.product" "fog"
    resetprop "ro.product.device" "fog"
    resetprop "ro.vendor.product.device" "fog"
}

load_wind()
{
    resetprop "ro.product.model" "Redmi 10C"
    resetprop "ro.product.name" "wind"
    resetprop "ro.build.product" "wind"
    resetprop "ro.product.device" "wind"
    resetprop "ro.vendor.product.device" "wind"
}

load_rain()
{
    resetprop "ro.product.model" "Redmi 10C NFC"
    resetprop "ro.product.name" "rain"
    resetprop "ro.build.product" "rain"
    resetprop "ro.product.device" "rain"
    resetprop "ro.vendor.product.device" "rain"
}

variant=$(getprop ro.boot.product.hardware.sku)
echo $variant

case $variant in
    "fog")
        load_fog
        ;;
    "wind")
        load_wind
        ;;
    "rain")
        load_rain
		;;
		*)
	load_rain
	;;
esac

exit 0
