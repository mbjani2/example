resource "aws_key_pair" "k8-key" {
  key_name   = "k8-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABATEzWtvAu/foWpjt6GgzD393iO+5xU62ckAQO7EkzjGV1bmMpyj6oQKEgkOn7R0I8A94+pxqybDFQYt53+wymBL00aaEQywgcmY4JZczfeJdrApn+bJ/hswgZ+mv17nfFNM1LFyCwv7CzagJYFL2UygsFEF50u5YPHV85XelShDFJ6e4K1xmlBSQiAQy+PQ4wJ//05xxfvoiUCaPRLe67FJhBn7hW1+MQxRm54CzRRepLWTCaL+u3BjMeLOtH3DGglU7043WgLAde69YhRgpcERXxQ/oeWB7mJXg/Spmn/bFQiWD9lp5KMtSqk53+wNDOj3iXOPucNczGELJVeC42ebT k8s"
}