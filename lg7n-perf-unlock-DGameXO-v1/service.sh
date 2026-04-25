#!/system/bin/sh
# Tunggu sistem fully booted
sleep 30

# Disable CPU ceiling - biar sugov_ext bebas boost ke max saat load tinggi
echo 0 > /sys/pnpmgr/fpsgo_boost/fbt/enable_ceiling

# Enable FPSGO boost mode
echo 1 > /sys/pnpmgr/fpsgo_boost/boost_mode

# Pastikan boost enable
echo 1 > /sys/pnpmgr/fpsgo_boost/boost_enable
