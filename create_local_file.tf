resource "random_pet" "name" {
  prefix = "Ms."
  length = 1
}

resource "local_file" "foo" {
  content  = random_pet.name.id
  filename = "${path.module}/foo.bar"
}
