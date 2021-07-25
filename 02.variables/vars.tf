variable "sample" {
  default = "Hello world"
}
output "sample" {
  value = "var.sample"
}
output "sample1" {
  value = "${var.sample}"
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
output "booleem" {
  value = "false"
}

variable "TRAINING" {
  default = DevOps

}
variable "TRAINING" {
  default = [DevOps,"aws"]
}
variable "TRAINING-DETA" {
  default = {AWS   = "6AM ESTDevOps= 8AM EST "}
}
