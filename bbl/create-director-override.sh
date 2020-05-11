#!/bin/bash

source ./bucc/bbl/common.sh

prepare_vars_file_for_cpi
set_default_cpi_flags

./bucc/bin/bucc up --cpi $(cpi) ${bucc_args}

./bucc/bin/bucc offline --cpi ${cpi} --destination /tmp/offline

aws s3 cp /tmp/offline/$(ls /tmp/offline)  s3://bootstrap-bbl-offline-store/
