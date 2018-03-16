output "endpoint_id" {
  value = "${aws_api_gateway_resource.this.id}"
}

output "endpoint_path" {
  value = "${aws_api_gateway_resource.this.path}"
}

output "http_method" {
  value = "${var.http_method}"
}
