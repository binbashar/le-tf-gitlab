resource "gitlab_project" "my_super_test_project" {
  name             = "My Super Test Project"
  path             = "my-super-test-project"
  description      = "Just for testing Terraform + GitLab"
  namespace_id     = gitlab_group.binbash_leverage.id
  visibility_level = "private"

  remove_source_branch_after_merge = true
}
