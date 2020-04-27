resource "aws_s3_bucket" "bucket-azymberdi" {
bucket = "my-bucket-azymberdi"  #bucket name has to be unique
acl    = "private"

tags = {
    Name        = "My bucket"
    Environment = "Dev"
}
}


# If you need to add more buckets
# resource "aws_s3_bucket" "bucket-azymberdi-2" {
# bucket = "my-bucket-azymberdi-2"
# acl    = "private"

# tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
# }
# }