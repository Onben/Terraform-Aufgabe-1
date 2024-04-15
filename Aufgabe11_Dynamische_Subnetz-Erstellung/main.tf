resource "random_integer" "num_subnets" {
    min     = 1
    max     = 5
}

resource "local_file" "subnets" {
    filename = "${path.module}/data/subnets.txt"
    content  = "${random_integer.num_subnets.result} subnets were generated"
}
