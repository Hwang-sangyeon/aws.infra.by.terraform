output "bastion_instances_id" {
    value       =   aws_instance.bastion.*.id
}

output "bastion_instances_public_ip" {
    value       =   aws_instance.bastion.*.public_ip
}

