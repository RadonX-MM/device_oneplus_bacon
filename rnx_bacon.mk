
# Copyright (C) 2015 The AOSParadox Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Disable Modules from being optimized
export NO_OPTIMIZATIONS :=\
  libqmiservices \
  libsrec% \
  %loc% \
  %gps% \
  camera_test \
  Find7Parts

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bacon device
$(call inherit-product, device/oneplus/bacon/device_bacon.mk)

# Inherit AOSParadox vendor
$(call inherit-product, vendor/rnx/common.mk)

PRODUCT_NAME := rnx_bacon
PRODUCT_DEVICE := bacon
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := A0001

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BRAND := oneplus
TARGET_VENDOR := oneplus
TARGET_VENDOR_PRODUCT_NAME := bacon
TARGET_VENDOR_DEVICE_NAME := A0001
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=A0001 PRODUCT_NAME=bacon

## Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=oneplus/bacon/A0001:5.1.1/LMY48B/YOG4PAS1N0:user/release-keys \
    PRIVATE_BUILD_DESC="bacon-user 5.1.1 LMY48B YOG4PAS1N0 release-keys"
endif

# Use additional build.prop tweaks to improve performance
ifneq ($(NO_PROP_TWEAKS),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
	windowsmgr.max_events_per_sec=90 \
	ro.max.fling_velocity=15000 \
	ro.min.fling_velocity=8000 \
	ro.min_pointer_dur=8 \
	touch.pressure.scale=0.1 \
	debugtool.anrhistory=0 \
	profiler.debugmonitor=false \
	profiler.launch=false \
	profiler.hung.dumpdobugreport=false \
	ro.config.htc.nocheckin=1 \
	ro.config.nocheckin=1 \
	ro.kernel.android.checkjni=0 \
	ro.kernel.checkjni=0 \
	ro.telephony.call_ring.delay=0 \
	ring.delay=0 \
	ro.config.combined_signal=true \
	persist.cust.tel.eons=1 \
	net.ipv4.ip_no_pmtu_disc=0 \
	net.ipv4.route.flush=1 \
	net.ipv4.tcp_ecn=0 \
	net.ipv4.tcp_fack=1 \
	net.ipv4.tcp_mem=187000 187000 187000 \
	net.ipv4.tcp_moderate_rcvbuf=1  \
	net.ipv4.tcp_no_metrics_save=1 \
	net.ipv4.tcp_rfc1337=1 \
	net.ipv4.tcp_rmem=4096 39000 187000  \
	net.ipv4.tcp_sack=1 \
	net.ipv4.tcp_timestamps=1 \
	net.ipv4.tcp_window_scaling=1 \
	net.ipv4.tcp_wmem=4096 39000 18700 \
	wifi.supplicant_scan_interval=220 \
	net.ipv4.tcp_window_scaling=1 \
	ro.ril.hsxpa=3 \
	ro.ril.gprsclass=10 \
	ro.ril.hep=1 \
	ro.ril.enable.dtm=1 \
	ro.ril.hsdpa.category=12 \
	ro.ril.enable.3g.prefix=1 \
	ro.ril.htcmaskw1.bitmask=4294967295 \
	ro.ril.htcmaskw1=14449 \
	ro.ril.hsupa.category=7 \
	ro.ril.hsdpa.category=10 \
	ro.ril.set.mtu1472=1 \
	persist.cust.tel.eons=1 \
	persist.data_netmgrd_mtu=1482 \
	persist.data_netmgrd_nint=8 \
	ro.use_data_netmgrd=true \
	ro.ril.enable.dtm=1 \
	ro.ril.def.agps.mode=2 \
	ro.ril.def.agps.feature=1 \
	ro.ril.enable.gea3=1 \
	ro.ril.enable.fd.plmn.prefix=23402,23410,23411  \
	media.stagefright.enable-player=true \
	media.stagefright.enable-meta=true \
	media.stagefright.enable-scan=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-record=false \
	net.tcp.buffersize.default=4096,87380,256960,4096, 16384,256960 \
	net.tcp.buffersize.wifi=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.umts=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.gprs=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.edge=4096,87380,256960,4096,163 84,256960 \
	net.tcp.buffersize.hspa=6144,87380,524288,6144,163 84,262144 \
	net.tcp.buffersize.lte=524288,1048576,2097152,5242 88,1048576,2097152 \
	net.tcp.buffersize.hsdpa=6144,87380,1048576,6144,8 7380,1048576 \
	net.tcp.buffersize.evdo_b=6144,87380,1048576,6144, 87380,1048576 \
	ro.ril.enable.amr.wideband=1 \
	ro.config.nocheckin=1 \
	profiler.force_disable_err_rpt=1 \
	profiler.force_disable_ulog=1 \
	ro.media.enc.jpeg.quality=100 \
	ro.media.dec.jpeg.memcap=8000000 \
	ro.media.enc.hprof.vid.bps=8000000 \
	ro.media.enc.hprof.vid.fps=65 \
	ro.media.enc.jpeg.quality=100 \
	debug.composition.type=gpu \
	debug.egl.hw=1 \
	debug.enabletr=true \
	debug.overlayui.enable=1 \
	debug.qctwa.preservebuf=1 \
	debug.performance.tuning=1 \
	debug.sf.hw=1 \
	dev.pm.dyn_samplingrate=1 \
	hw3d.force=1 \
	ro.config.disable.hw_accel=false \
	ro.fb.mode=1 \
	ro.sf.compbypass.enable=0 \
	ro.vold.umsdirtyratio=20 \
	persist.sys.composition.type=c2d \
	persist.sys.ui.hw=1 \
	video.accelerate.hw=1 \
	ro.ril.hep=1 \
	persist.sys.use_16bpp_alpha=1 \
	debug.gr.swapinterval=0 \
	com.qc.hardware=1 \
	debug.qc.hardware=true \
	debug.qctwa.preservebuf=1 \
	debug.qctwa.statusbar=1 \
	pm.sleep_mode=1 \
	ro.ril.disable.power.collapse=0 \
	profiler.force_disable_err_rpt=1 \
	profiler.force_disable_ulog=1 \
	dalvik.vm.checkjni=false \
	dalvik.vm.execution-mode=int:jit \
	ro.ril.power_collapse=1 \
	power_supply.wakeup=enable \
	ro.mot.eri.losalert.delay=1000 \
	ro.config.hw_fast_dormancy=1 \
	ro.config.hw_power_saving=1 \
	ro.camcorder.videoModes=true \
	ime_extend_row_keyboard=true \
	ime_onehand_keyboard=true \
	ime_split_keyboard=true \
	ime_vibration_pattern=0:60 \
	dalvik.vm.verify-bytecode=false \
	dalvik.vm.dexopt-flags=m=y,v=n,o=v
endif
