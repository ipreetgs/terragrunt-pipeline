variable "jfrog_token" {
  type        = string
  description = "Token for JFrog Artifactory"
  sensitive   = true  # Marks the variable as sensitive, preventing it from being logged
}