package "httpd" do
  action :install
end

service "httpd" do
  action :start
end
