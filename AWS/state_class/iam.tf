resource "aws_iam_user" "timothy" { 
   name = "timothy" 
   path = "/" 
} 

resource "aws_iam_group" "developers" { 
    name = "developers" 
    path = "/" 
} 

resource "aws_iam_group_membership" "developers_team" { 
  name = "developers-group-membership" 
  users = [ "${aws_iam_user.timothy.name}"
  ]
  group = "${aws_iam_group.developers.name}"
} 