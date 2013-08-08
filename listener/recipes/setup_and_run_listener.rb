bash "setup_and_run_listener" do
  cwd "/home/ec2-user/"
  code <<-EOH
    aws s3 get-object --bucket project_mi --key listener/startup-script.sh startup-script.sh
    chmod 777 startup-script.sh
    ./startup-script.sh
  EOH
  creates "/home/ec2-user/listener"
end
