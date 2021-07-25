variable "sample" {
  default = "Hello world"
}

output "sample1" {
  value = "var.samples"
}

output "sample2" {
  value = "$[var,sample]"
}
