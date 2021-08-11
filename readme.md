# This is not an official Google project.

This script is for **educational purposes only**, is **not certified** and is **not recommended** for production environments.

## Copyright 2021 Google LLC

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.

## Clone this repository to begin

     git clone https://github.com/manueltorresc/anthos-baremetal-gce.git

## How to use

1) Build docker image in your project
    PROJECT_ID=
    gcloud builds submit --tag gcr.io/${PROJECT_ID}/pg-proxy:0.0.1

2) Replace the name of your image in Deployment.yaml

3) Apply deployment and service files

## Thanks

This project is a fork form https://github.com/SoarinFerret/iptablesproxy