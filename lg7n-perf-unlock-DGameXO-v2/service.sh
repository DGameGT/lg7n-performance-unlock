#!/system/bin/sh
# Tunggu sistem fully booted
sleep 30

# Enable FPSGO boost
echo 1 > /sys/pnpmgr/fpsgo_boost/boost_enable
echo 1 > /sys/pnpmgr/fpsgo_boost/boost_mode

# Loop: paksa ceiling tetap 0 setiap 2 detik
while true; do
    echo 0 > /sys/pnpmgr/fpsgo_boost/fbt/enable_ceiling
    sleep 2
done &
