variable "sample" {
  default = "Hello world"
}
output "sample" {
  value = "var.sample"
}
output "sample1" {
  value ="$[var.sample]"
}

variable "sample2" {}

output "sample2" {
  value = "var.sample2"
}
output "string" {
  value = "hello"
}
output "number" {
  value = 10
}
output "Boolean" {
  value = "false"
}
output "data-type" {
  value = "String=$(var.string) Number=$(var.number) Boolean=$(var.boolean"
}

variable "TRAINING" {
  default ="DevOps"
}
variable "TRAININGS" {
  default = ["devops", "aws"]
}
variable "TRAINING-DETAILS" {
  default = {
    aws ="6AM EST"
    DevOps ="8AM EST"
  }
}
output "FIRST-TRAINING" {
  value = "var,TRAINING[0]"
}
output "SECOND-TRAINING" {
  value = "var.TRAININGS[1]"
}

output "TRAINING-DETAILS" {
  value = "AWS TIMING - ${var.TRAINING-DETAILS["AWS"]}"
}
output "TRAINING" {
  value = "vars.TRAINING"
}


