#!/bin/bash
# Copyright 2021 Huawei Technologies Co., Ltd
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ============================================================================

TASK_NAME='squad-v1'
SHARD_NUM=1
CUR_DIR=`pwd`

python ${CUR_DIR}/src/squad_utils.py  \
    --task_name=$TASK_NAME \
    --vocab_path="/home/ma-user/work/albert/albert_base/30k-clean.vocab" \
    --spm_model_file="/home/ma-user/work/albert/albert_base/30k-clean.model" \
    --max_seq_length=384 \
    --max_query_length=64 \
    --doc_stride=128 \
    --do_lower_case="true" \
    --train_file="/home/ma-user/work/albert/datasets/squad-v1/train-v1.1.json" \
    --train_feature_file="train_feature_file_v1_base.mindrecord" \
    --shard_num=$SHARD_NUM \
    --do_train=True