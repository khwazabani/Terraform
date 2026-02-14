resource "local_file" "f1" {
					  filename = var.f1
					  content  = var.c1
					}
					variables f1{
						default = "aaa"
					}
					variables c1{
						default = "content"
					}
