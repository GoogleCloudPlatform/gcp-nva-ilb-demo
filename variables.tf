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




variable "project-id" {
 type = string
}

/* Currently unused
variable "ensure-org-policies" {
 type = bool
}
*/

variable "admin-name" {
 type    = string
 default = "consoleadmin"
}


variable "admin-secret-password" {
 type    = string
 default = "$9$mmEPoKYqqMNbaU$KdV/pu/m3nv81ySDyeEOSZxszafLhx9WSh7fNmdXul."
}


variable "vpc-prefix" {
 type    = string
 default = "vpc-"
}


variable "vpc-hub-nic2-name" {
 type    = string
 default = "hub-nic2"
}


variable "vpc-hub-nic3-name" {
 type    = string
 default = "hub-nic3"
}


variable "subnet1-prefix" {
 type    = string
 default = "subnet1-"
}


variable "subnet1-vpc-hub1-first-three-octets" {
 type    = string
 default = "172.16.1"
}


variable "subnet1-vpc-hub2-first-three-octets" {
 type    = string
 default = "172.16.2"
}


variable "subnet1-vpc-untrusted-first-three-octets" {
 type    = string
 default = "192.168.1"
}


variable "subnet1-vpc-transit-first-three-octets" {
 type    = string
 default = "192.168.10"
}


variable "subnet1-vpc-management-first-three-octets" {
 type    = string
 default = "192.168.100"
}


# Note: mask for all NVA interfaces is derived from the addresses above and mask below ... if the mask changes, make the NVA interface's mask match
variable "last-octet-and-mask" {
 type    = string
 default = ".0/24"
}


variable "nva1-int-address" {
 type    = string
 default = ".2"
}


variable "nva2-int-address" {
 type    = string
 default = ".3"
}


variable "ilb-forwarding-rule-address" {
 type    = string
 default = ".4"
}


variable "test-vm-int-address" {
 type    = string
 default = ".10"
}


variable "spoke-first-octet" {
 type    = string
 default = "10"
}


variable "spoke-hub1-second-octet" {
 type    = string
 default = ".1"
}


variable "spoke-hub2-second-octet" {
 type    = string
 default = ".2"
}


# third octet is the spoke number
variable "gcp-region" {
 type    = string
 default = "us-east1"
}


variable "gcp-zone" {
 type    = string
 default = "us-east1-b"
}


variable "vm-name-prefix" {
 type    = string
 default = "vm-in-"
}


variable "vm-machine-type" {
 type    = string
 default = "e2-micro"
}


# there is no VRF1 on purpose to match VRF #s with interface numbers on the Cisco CSR appliance
variable "vrf-hub1-name" {
 type    = string
 default = "vrf-hub1"
}


variable "vrf-hub2-name" {
 type    = string
 default = "vrf-hub2"
}


variable "vrf-transit-name" {
 type    = string
 default = "vrf-transit"
}


variable "vrf-management-name" {
 type    = string
 default = "vrf-management"
}


variable "vrf-transit-route-descriptor" {
 type    = string
 default = "2:2"
}


variable "vrf-management-route-descriptor" {
 type    = string
 default = "3:3"
}


variable "vrf-hub1-route-descriptor" {
 type    = string
 default = "4:4"
}


variable "vrf-hub2-route-descriptor" {
 type    = string
 default = "5:5"
}


variable "health-check-name" {
 type    = string
 default = "hc-nvas"
}


variable "instance-group-name" {
 type    = string
 default = "ig-nvas"
}


variable "ilb-backend-untrusted-name" {
 type    = string
 default = "ilb-backend-untrusted"
}


variable "ilb-backend-transit-name" {
 type    = string
 default = "ilb-backend-transit"
}


variable "ilb-backend-hub1-name" {
 type    = string
 default = "ilb-backend-hub1"
}


variable "ilb-backend-hub2-name" {
 type    = string
 default = "ilb-backend-hub2"
}


variable "ilb-forwarding-rule-untrusted-name" {
 type    = string
 default = "ilb-forwarding-rule-untrusted"
}


variable "ilb-forwarding-rule-transit-name" {
 type    = string
 default = "ilb-forwarding-rule-transit"
}


variable "ilb-forwarding-rule-hub1-name" {
 type    = string
 default = "ilb-forwarding-rule-hub1"
}


variable "ilb-forwarding-rule-hub2-name" {
 type    = string
 default = "ilb-forwarding-rule-hub2"
}


variable "route-192-to-ilb-untrusted-name" {
 type    = string
 default = "route-192-to-ilb-untrusted"
}


variable "route-172-to-ilb-untrusted-name" {
 type    = string
 default = "route-172-to-ilb-untrusted"
}


variable "route-10-to-ilb-untrusted-name" {
 type    = string
 default = "route-10-to-ilb-untrusted"
}


variable "default-route-to-ilb-transit-name" {
 type    = string
 default = "default-route-to-ilb-transit"
}


variable "default-route-to-ilb-hub1-name" {
 type    = string
 default = "default-route-to-ilb-hub1"
}


variable "default-route-to-ilb-hub2-name" {
 type    = string
 default = "default-route-to-ilb-hub2"
}


variable "fw-rule-source-ranges" {
 type    = list(any)
 default = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16", "35.235.240.0/20"]
}


# the 2 health check ranges below added to the fw-rule-source-ranges in the script
variable "health-check-source-ip-range-1" {
 type    = string
 default = "35.191.0.0/16"
}


variable "health-check-source-ip-range-2" {
 type    = string
 default = "130.211.0.0/22"
}
