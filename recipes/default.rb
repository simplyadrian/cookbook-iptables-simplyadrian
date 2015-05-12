#
# Cookbook Name:: iptables-simplyadrian
# Recipe:: default
#
# Copyright 2014, simplyadrian
#
# All rights reserved - Do Not Redistribute
#

include_recipe "iptables-simplyadrian::privoxy"
include_recipe "iptables-simplyadrian::ssh"
include_recipe "iptables-simplyadrian::web"
