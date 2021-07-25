variable "sample" {
  default = "Hello World"
}

output "sample1" {
  value = "var.samples"
}

output "sample2" {
  value = "$[var,sample]"
}
