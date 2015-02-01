#!/sbin/sh

#set max_oc

if [ ! -e /tmp/aroma/freq.prop ]; then
	cpu_oc="cpu_oc=0"
else

val1=$(cat /tmp/aroma/freq.prop | cut -d '=' -f2)

case $val1 in

	1)
	  cpu_oc="cpu_oc=1728000"
	  ;;
	2)
	  cpu_oc="cpu_oc=1958400"
	  ;;
	3)
	  cpu_oc="cpu_oc=2265600"
	  ;;
	4)
	  cpu_oc="cpu_oc=2457600"
	  ;;
	5)
	  cpu_oc="cpu_oc=2572800"
	  ;;
  	6)
	  cpu_oc="cpu_oc=2649600"
	  ;;
	7)
	  cpu_oc="cpu_oc=2726400"
	  ;;
	8)
	  cpu_oc="cpu_oc=2803200"
	  ;;
esac
fi

#set undervolting
val3=$(grep selected.2 /tmp/aroma/cpu.prop | cut -d '=' -f2)

case $val3 in
	1)
	  vdd_uv="vdd_uv=0"
	  ;;
	2)
	  vdd_uv="vdd_uv=1"
	  ;;
	3)
	  vdd_uv="vdd_uv=2"
	  ;;
	4)
	  vdd_uv="vdd_uv=3"
	  ;;

esac


echo "cmdline = console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 ehci-hcd.park=3" $vdd_uv $cpu_oc  >> /tmp/bootimg.cfg
