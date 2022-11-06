#!/system/bin/sh
MODDIR=${0%/*}

# Thực thi tập lệnh của tytydraco và ktweak dự án của anh ấy, cảm ơn! 
write() {
	# Bảo lãnh nếu tệp không tồn tại
	[[ ! -f "$1" ]] && return 1
	
	# Làm cho tệp có thể ghi trong trường hợp nó chưa có
	chmod +w "$1" 2> /dev/null

	# Ghi giá trị mới và bảo lãnh nếu có lỗi
	if ! echo "$2" > "$1" 2> /dev/null
	then
		echo "Failed: $1 → $2"
		return 1
	fi
}

sleep 6

# Cài đặt IPV4
echo "3" > /proc/sys/net/ipv4/tcp_fastopen
echo "1" > /proc/sys/net/ipv4/tcp_ecn
echo "0" > /proc/sys/net/ipv4/tcp_syncookies
echo "0" > /proc/sys/net/ipv4/tcp_timestamps
echo "1" > /proc/sys/net/ipv4/tcp_rfc1337
echo "1" > /proc/sys/net/ipv4/tcp_tw_reuse
echo "1" > /proc/sys/net/ipv4/tcp_no_metrics_save
echo "10" > /proc/sys/net/ipv4/tcp_keepalive_probes
echo "1" > /proc/sys/net/ipv4/tcp_fack
echo "1" > /proc/sys/net/ipv4/tcp_sack
echo "30" > /proc/sys/net/ipv4/tcp_keepalive_intvl
echo "30" > /proc/sys/net/ipv4/tcp_fin_timeout
echo "0" > /proc/sys/net/ipv4/tcp_slow_start_after_idle
echo "0" > /proc/sys/net/ipv4/ip_no_pmtu_disc
echo "1" > /proc/sys/net/ipv4/tcp_tw_recycle
echo "1" > proc/sys/net/ipv4/tcp_window_scaling
echo "16384" > /proc/sys/net/core/netdev_max_backlog
echo "1" > /proc/sys/net/ipv4/tcp_mtu_probing
echo "1" > /proc/sys/net/netfilter/nf_conntrack_tcp_timeout_fin_wait

# Exit
exit 0