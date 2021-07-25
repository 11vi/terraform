variable "sample" {
  default = Hello world
}
output "sample" {
  value = "var.samples"

}
output "sample" {
  value = "$[var,sample]"
}
