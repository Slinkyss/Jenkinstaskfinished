resource "aws_cloudformation_stack" "jenkinstask" {
  name = "jenkins-stack"
  template_body = file("${path.module}/first-stack.yaml")
}
