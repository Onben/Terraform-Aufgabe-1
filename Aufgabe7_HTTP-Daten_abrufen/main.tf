provider "local" {}

data "http" "api_call" {
    url = "https://api.chucknorris.io/jokes/random"
    }

    resource "local_file" "api_response" {
    filename = "${path.module}/data/response.json"
    content  = data.http.api_call.body
}
