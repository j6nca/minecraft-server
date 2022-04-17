
cd ../terraform
instance_id=$(terraform output | sed -n 's/.*instance_id = //p' | tr -d '"')
echo "Starting ec2 instance $instance_id"
aws ec2 start-instances --instance-ids $instance_id