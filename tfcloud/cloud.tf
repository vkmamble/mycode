terraform {
  cloud {
    organization = "vkm"

    workspaces {
      name = "my-example"
    }
  }
}
