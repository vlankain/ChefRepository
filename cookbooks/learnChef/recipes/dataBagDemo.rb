#
# Cookbook:: learnChef
# Recipe:: dataBagDemo
#
# Copyright:: 2019, The Authors, All Rights Reserved.


file '/home/vagrant/userName.txt' do
action :create
credentials = search(:DATABASE, "id:credentials").first 
userName = credentials["user"]
content "Contents retrieved, userName is : #{userName}\n" 
end 
