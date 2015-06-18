#
# Cookbook Name:: site_user
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
user_account 'dev01' do
    action :create
    ssh_keys  ['ssh-rsa ...']
end
