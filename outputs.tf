output "github_runner_ami_id" {
  description = "The ID of the created AMI with GitHub Runner"
  value       = aws_ami_from_instance.github_runner_ami.id
}
