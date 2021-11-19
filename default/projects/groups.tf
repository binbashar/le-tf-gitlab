resource "gitlab_group" "binbash_leverage" {
  name             = "Binbash Leverage"
  path             = "binbash-leverage"
  visibility_level = "private"
  
  lifecycle {
    ignore_changes = [
      # These were added here because TF always reports that it needs to change
      # these (even if you add a matching definition for these values).
      project_creation_level,
      request_access_enabled,
      subgroup_creation_level
    ]
  }
}
