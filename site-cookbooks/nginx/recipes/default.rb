#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template "nginx.repo" do
  path '/etc/yum.repos.d/nginx.repo'
  source "nginx.repo.erb"
  mode 0644
  owner 'root'
  group 'root'
end

yum_package "nginx" do
  action :install
  flush_cache [:before]
end

service "nginx" do
  action [:enable, :start]
  supports :status => true, :restart => true, :reload => true
end
