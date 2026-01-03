resource "local_file" "firstfile" {
  filename = "abc.txt"
  content  = "this is my fist file"
}
resource random_string "string" {
					length = 15
				}
resource local_file "secondfile" {
					filename = "xyz.txt"
					content = "this is my fist file"
				}

