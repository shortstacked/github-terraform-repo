data "github_repository" "example" {
  full_name = "shortstacked/java-template"
}

resource "github_repository" "example" {
  name        = "java-from-terraform"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner      = "shortstacked"
    repository = "java-template"
  }
}

resource "github_repository" "another_repo" {
  name        = "java-from-terraform-again"
  description = "My awesome codebase"

  visibility = "public"

  template {
    owner      = "shortstacked"
    repository = "java-template"
  }
}