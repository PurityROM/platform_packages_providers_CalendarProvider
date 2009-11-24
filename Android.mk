#
# Copyright (C) 2008 The Android Open Source Project
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
#
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := user

LOCAL_SRC_FILES := $(call all-java-files-under,src)

# We depend on googlelogin-client also, but that is already
# being included by google-framework
LOCAL_STATIC_JAVA_LIBRARIES := google-framework
LOCAL_STATIC_JAVA_LIBRARIES += gsf-client     # Google apps only: GSF client libraries
LOCAL_STATIC_JAVA_LIBRARIES += google-common  # Google apps only: shared Google code

LOCAL_PACKAGE_NAME := CalendarProvider

include $(BUILD_PACKAGE)

# Use the following include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
