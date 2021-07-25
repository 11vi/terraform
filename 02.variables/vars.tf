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

