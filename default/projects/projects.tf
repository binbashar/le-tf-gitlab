resource "gitlab_project" "my_super_test_project" {
  name             = "My Super Test Project"
  path             = "my-super-test-project"
  description      = "Just for testing Terraform + GitLab"
  namespace_id     = gitlab_group.binbash_leverage.id
  visibility_level = "private"

  remove_source_branch_after_merge = true
}

resource "gitlab_project" "le_tf_sandbox" {
  name             = "Leverage Terraform Ref Arch Sandbox"
  path             = "le-tf-infra-aws-sandbox"
  description      = "Just for testing Terraform + GitLab"
  namespace_id     = gitlab_group.binbash_leverage.id
  visibility_level = "private"

  only_allow_merge_if_pipeline_succeeds = true
  remove_source_branch_after_merge      = true
}

resource "gitlab_project" "le_sample_backend_app" {
  name             = "Leverage Sample Backend App"
  path             = "le-sample-backend-app"
  description      = "A sample backend application"
  namespace_id     = gitlab_group.binbash_leverage.id
  visibility_level = "private"

  remove_source_branch_after_merge = true
}

resource "gitlab_project" "le_gitlab_automation" {
  name             = "Leverage Gitlab Automation"
  path             = "le-gitlab-automation"
  description      = "Utilities and scripts that are useful for Automation"
  namespace_id     = gitlab_group.binbash_leverage.id
  visibility_level = "private"

  remove_source_branch_after_merge = true
}

