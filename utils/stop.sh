
cd ../terraform
instance_id=$(terraform output | sed -n 's/.*instance_id = //p' | tr -d '"')
echo "Stopping ec2 instance $instance_id"
aws ec2 stop-instances --instance-ids $instance_id