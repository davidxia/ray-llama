#!/bin/bash
# Copyright 2023 The Google Cloud ML Accelerators Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ==============================================================================
# Below aren't needed if running this code on Ray head node directly
# export EXTERNAL_HEAD_IP=10.160.194.201
# export RAY_HEAD_IP=$(gcloud compute instances list | grep $EXTERNAL_HEAD_IP | awk '{print $4}')
# export RAY_ADDRESS="http://10.160.194.201:8265"

ray job submit --working-dir train/ -- python main.py
