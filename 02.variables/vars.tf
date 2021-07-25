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
output 'Boolees'{
  value = "false"
}

variable "TRAINING" {
  default ="DevOps"

}
variable "TRAININGS" {
  default = [devops,"aws"]
}
variable "TRAINING-DETAILS" {
  default = {AWS   = "6AM EST DevOps 8AM EST"
}
output "TRAINING" {
  value = "var,TRAINING[0]"
}
output "ECOND-TRAINING" {
  value = "var.TRAININGS[1]"
}
output "TRAINING-DETAILS" {
  value = "AWS TIMING-${var.TRAINING-DETAILS[AES]}"
}