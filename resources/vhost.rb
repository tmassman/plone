#
# Author:: Thomas Massmann <thomas@propertyshelf.com>
# Cookbook Name:: plone
# Resource:: vhost
#
# Copyright:: 2013, Propertyshelf, Inc <info@propertyshelf.com>
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

actions :enable, :disable, :remove

def initialize(*args)
  super
  @action = [:enable]
end

attribute :domain_name, :kind_of => String, :name_attribute => true
attribute :plone_site, :kind_of => String, :default => "Plone"
attribute :backend_ip, :kind_of => String, :default => "127.0.0.1"
attribute :backend_port, :kind_of => String, :default => "8080"
attribute :template, :kind_of => String, :default => "nginx_plone.conf.erb"
attribute :cookbook, :kind_of => String, :default => "plone"