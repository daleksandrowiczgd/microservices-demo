terraform {
  cloud {
    organization = "daleksandrowicz-org"
    workspaces {
      name = "t1-to-t2-devops-gridu"
    }
  }
}