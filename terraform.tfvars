# Copyright 2024 Google LLC

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# To run script -
# Enable APIs: Compute Engine API , Cloud Resource Manager API
# Set org policies at project level to (if not already): disableSerialPortAccess (not enforced) , vmCanIpForward (selectively allow or allow all) ,
#  requireShieldedVm (not enforced) , trustedImageProjects (selectively allow or allow all), vmExternalIpAccess (selectively allow or allow all)

project-id          = "" # ID of an existing project to add GCP components and NVAs
# ensure-org-policies = false                            # Currently unused - Org policies need to be in place for the script to run. Setting the value to true enables these org policies for the project only. 
