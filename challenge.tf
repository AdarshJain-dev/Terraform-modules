#Creating a file in local computer through terraform

resource "null_resource" "file" {   
  provisioner "local-exec" {
    command = "echo 'Message: ${upper("Hello, World!")}' > challenge.txt"
  }
}
