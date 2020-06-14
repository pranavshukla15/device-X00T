/*
 * Copyright (C) 2019 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "GloveModeService"

#include <android-base/file.h>
#include <android-base/logging.h>
#include <android-base/strings.h>

#include "GloveMode.h"

namespace vendor {
namespace mokee {
namespace touch {
namespace V1_0 {
namespace implementation {

constexpr const char kControlPath[] = "/sys/board_properties/tpd_glove_status";

// Methods from ::vendor::mokee::touch::V1_0::IGloveMode follow.
Return<bool> GloveMode::isEnabled() {
    std::string buf;

    if (!android::base::ReadFileToString(kControlPath, &buf)) {
        LOG(ERROR) << "Failed to read " << kControlPath;
        return false;
    }

    return std::stoi(android::base::Trim(buf)) == 1;
}

Return<bool> GloveMode::setEnabled(bool enabled) {
    if (!android::base::WriteStringToFile((enabled ? "1" : "0"), kControlPath)) {
        LOG(ERROR) << "Failed to write " << kControlPath;
        return false;
    }

    return true;
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace touch
}  // namespace mokee
}  // namespace vendor
