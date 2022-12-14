#!/bin/sh
#PJM -L "node=1"
#PJM -L "rscgrp=small"
#PJM -L "elapse=10:00"
#PJM -g hp220271
# See https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/use_latest/LyeredStorageAndLLIO/SelectAvailableVolumes.html
##PJM -x PJM_LLIO_GFSCACHE=/vol000X

# See https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/FugakuSpackGuide/intro.html#sourcing-environment-script
#. /vol0004/apps/oss/spack/share/spack/setup-env.sh
#spack load XXXX
# See https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/FugakuSpackGuide/intro.html#path-of-dynamic-link-libraries-of-the-operating-system
#export LD_LIBRARY_PATH=/lib64:$LD_LIBRARY_PATH

# See https://www.fugaku.r-ccs.riken.jp/doc_root/en/user_guides/use_latest/LyeredStorageAndLLIO/TheSecondLayerStrage.html#common-file-distribution-function-llio-transfer
#/usr/bin/llio_transfer <path_to_file>

# https://www.fugaku.r-ccs.riken.jp/doc_root/ja/user_guides/lang_latest/CompileforCN/GCC_MPI/index.html
export GCC="/vol0004/apps/oss/gcc-arm-11.2.1"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$GCC/aarch64-linux-gnu/lib:$GCC/aarch64-linux-gnu/lib64"

./target/aarch64-unknown-linux-gnu/release/hello-world
