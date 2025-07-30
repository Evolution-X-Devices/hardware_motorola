#
# SPDX-FileCopyrightText: The Android Open Source Project
# SPDX-License-Identifier: Apache-2.0
#

# RemovePackages
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional

ifneq (,$(filter %beckham %evert %channel %chef %lake %messi %ocean %river, $(TARGET_PRODUCT)))
LOCAL_OVERRIDES_PACKAGES := \
	AvatarPickerGoogle \
	Flipendo \
	OmniJaws \
	Seedvault
endif

ifneq (,$(filter %kane %troika, $(TARGET_PRODUCT)))
LOCAL_OVERRIDES_PACKAGES := \
	AvatarPickerGoogle \
	ColumbusService \
	EmergencyInfoGoogleNoUi \
	LMOFreeform \
	LMOFreeformSidebar \
	Flipendo \
	Gallery2 \
	MaestroPrebuilt \
	OmniJaws \
	OmniStyle \
	Seedvault \
	talkback \
	TurboPrebuilt \
	WellbeingPrebuilt
endif

LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)
