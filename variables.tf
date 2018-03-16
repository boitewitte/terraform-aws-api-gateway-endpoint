variable "api_id" {
  type        = "string"
  description = "The ID of the associated REST API"
}

variable "parent_resource_id" {
  type        = "string"
  description = "The ID of the parent API resource"
}

variable "endpoint" {
  type        = "string"
  description = "The last path segment of this API resource."
}

variable "http_method" {
  type        = "string"
  description = "The HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  default     = ""
}

variable "authorizer_id" {
  type        = "string"
  description = "The authorizer id to be used when the authorization is CUSTOM"
  default     = ""
}

variable "api_key_required" {
  description = "describe your variable"
  default     = false
}

variable "request_models" {
  type        = "map"
  description = "A map of the API models used for the request's content type where key is the content type"
  default     = {}
}

variable "request_templates" {
  type        = "map"
  description = " A map of request query string parameters and headers that should be passed to the integration."
  default     = {}
}

variable "request_parameters" {
  type        = "map"
  description = "A map of request query string parameters and headers that should be passed to the integration."
  default     = {}
}

variable "tags" {
  type        = "map"
  description = "tags"
  default     = {}
}
