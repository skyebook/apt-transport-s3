#
# Author:: Skye Book (<skye@skyebook.net>)
# Cookbook Name:: apt-transport-s3
# Recipe:: default
#
# Copyright 2013, Skye Book
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
#


# Add the apt-transport-s3 PPA repository
apt_repository "apt-transport-s3" do
  uri "http://ppa.launchpad.net/skye-book/apt-transport-s3/ubuntu"
  distribution "precise"
  components ["main"]
  keyserver "keyserver.ubuntu.com"
  key "A9312DDD"
  action :add
end

# Install the package
package 'apt-transport-s3' do
  action :install
  options '--force-yes'
end