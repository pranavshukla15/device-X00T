<?xml version="1.0" encoding="utf-8"?>
<!--
/*
** Copyright 2013, The Android Open Source Project
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/
-->

<!-- These resources are around just to allow their values to be customized
     for different hardware and product builds. -->
<resources>
    <!-- Doze: does this device support STATE_DOZE and STATE_DOZE_SUSPEND?  -->
    <bool name="doze_display_state_supported">true</bool>

    <!-- Doze: should the pickup sensor be used as a pulse signal? -->
    <bool name="doze_pulse_on_pick_up">true</bool>

    <!-- Doze: when to pulse after a buzzworthy notification arrives -->
    <string name="doze_pulse_schedule" translatable="false">10s,30s,60s,180s</string>

    <!-- Doze: check proximity sensor before pulsing from intent? -->
    <bool name="doze_proximity_check_before_pulse_intent">true</bool>

    <!-- Doze: pulse parameter - delay to wait for the screen to wake up after an intent -->
    <integer name="doze_pulse_delay_in_intent">0</integer>

    <!-- Max visible notification icons -->
    <integer name="config_maxVisibleNotificationIcons">6</integer>
    <integer name="config_maxVisibleNotificationIconsWhenDark">7</integer>

    <!-- FPSInfoService Fps file path -->
    <string name="config_fpsInfoSysNode" translatable="false">/sys/devices/virtual/graphics/fb0/measured_fps</string>

</resources>
