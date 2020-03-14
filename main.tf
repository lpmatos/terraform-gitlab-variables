# =============================================================================
# DECLARE LOCAL VALUES
# =============================================================================

# We use yamldecode function to get some values from a YML file.
# The try function is to validate a value. If anything fails, we return a empty string or a false.
locals{
  normalized_values = {
    gitlab_group_name = try("${yamldecode(file("values.yml"))["group"]}", "")
    gitlab_project_name = try("${yamldecode(file("values.yml"))["project"]}", "")
    gitlab_ci_variables = "${yamldecode(file("values.yml"))["envs"]}"
    enable_gitlab_group_variables = try("${yamldecode(file("values.yml"))["enable_gitlab_group_variables"]}", false)
  }
}

# =============================================================================
# CONFIGURE PROVIDER - GITLAB
# =============================================================================

provider "gitlab" {
  token    = "${yamldecode(file("values.yml"))["token"]}"
  base_url = var.gitlab_base_url
}

# =============================================================================
# CREATING RESOURCE THAT SET VARIABLES IN GITLAB AT THE GROUP LEVEL
# =============================================================================

resource "gitlab_group_variable" "gitlab_group" {
  count     = local.normalized_values.enable_gitlab_group_variables == true && local.normalized_values.gitlab_group_name != "" && "${length(keys(local.normalized_values.gitlab_ci_variables))}" > 0 ? "${length(keys(local.normalized_values.gitlab_ci_variables))}" : 0
  group     = local.normalized_values.gitlab_group_name
  key       = "${element(keys(local.normalized_values.gitlab_ci_variables), count.index)}"
  value     = "${element(values(local.normalized_values.gitlab_ci_variables), count.index)}"
  protected = false  
}

# =============================================================================
# CREATING RESOURCE THAT SET VARIABLES IN GITLAB AT THE PROJECT LEVEL
# =============================================================================

resource "gitlab_project_variable" "gitlab_project" {
  count     = local.normalized_values.enable_gitlab_group_variables == false && local.normalized_values.gitlab_project_name != "" && "${length(keys(local.normalized_values.gitlab_ci_variables))}" > 0 ? "${length(keys(local.normalized_values.gitlab_ci_variables))}" : 0
  project   = local.normalized_values.gitlab_project_name
  key       = "${element(keys(local.normalized_values.gitlab_ci_variables), count.index)}"
  value     = "${element(values(local.normalized_values.gitlab_ci_variables), count.index)}"
  protected = false
}
