#!/bin/sh -xu

# Input Parameters
ARG_PATH="$3/$2"
ARG_NAME="$2"
ARG_LABEL="N/A"

filebot -script fn:amc @/config/filebot/FileBotArgs.txt ut_dir="$ARG_PATH" ut_kind="multi" ut_title="$ARG_NAME" ut_label="$ARG_LABEL"
