variable "gitlab_api_url" {
  description     = "GitLab API URL"
  type            = string
  default         = "https://gitlab.com/api/v4/"
  validation {
    condition     = length(regexall("/api/v4/", var.gitlab_api_url)) > 0
    error_message = "The gitlab_api_url value must be a valid GitLab API URL."
  }
}

variable "values_file" {
  description     = "Values File"
  type            = string
  default         = "values.yml"
  validation {
    condition     = length(regexall(".yml", var.values_file)) > 0 || length(regexall(".yaml", var.values_file)) > 0
    error_message = "The values_file value must be a valid YML file."
  }
}
