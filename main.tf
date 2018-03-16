resource "aws_api_gateway_resource" "this" {
  rest_api_id         = "${var.api_id}"
  parent_id           = "${var.parent_resource_id}"

  path_part           = "${var.endpoint}"
}

resource "aws_api_gateway_method" "this_auth" {
  count               = "${var.http_method != "" && var.authorizer_id != "" ? 1 : 0}"

  rest_api_id         = "${var.api_id}"
  resource_id         = "${aws_api_gateway_resource.this.id}"
  http_method         = "${var.http_method}"
  
  authorization       = "CUSTOM"
  authorizer_id       = "${var.authorizer_id}"

  api_key_required    = "${var.api_key_required}"
  request_models      = "${var.request_models}"
  request_parameters  = "${var.request_parameters}"
}

resource "aws_api_gateway_method" "this_no_auth" {
  count               = "${var.http_method != "" && var.authorizer_id == "" ? 1 : 0}"

  rest_api_id         = "${var.api_id}"
  resource_id         = "${aws_api_gateway_resource.this.id}"
  http_method         = "${var.http_method}"
  
  authorization       = "NONE"

  api_key_required    = "${var.api_key_required}"
  request_models      = "${var.request_models}"
  request_parameters  = "${var.request_parameters}"
}
