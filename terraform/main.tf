resource "github_repository" "demo-bookmarks" {
  name        = "demo-bookmarks"

  has_issues = false
  has_discussions = false
  has_projects = false
  has_wiki = false
  has_downloads = false
  is_template = false

  auto_init = true

  delete_branch_on_merge = true

  archive_on_destroy = true

  pages {
    source {
      branch = "main"
    }
    build_type = "workflow"
  }
}
