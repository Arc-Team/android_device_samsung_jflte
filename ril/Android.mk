
# RIL
SECRIL_CLIENT_DIRS := libsecril-client libsecril-client-sap
include $(foreach client_dirs,$(SECRIL_CLIENT_DIRS),$(call my-dir)/$(client_dirs)/Android.mk)
