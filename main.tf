provider "gitlab" {
  token    = local.variables.token
  base_url = local.variables.gitlab_api_url
}
