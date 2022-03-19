resource "aws_iam_role" "ec2_role" {
    name="ec2_role"
    assume_role_policy = jsonencode({
     "Version": "2012-10-17",
     "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com"
                ]
            }
        }
    ]
})
   
}

resource "aws_iam_policy_attachment" "name" {
    name = "ec2_attachment"
    policy_arn = aws_iam_policy.ec2_policy.arn
    roles = [aws_iam_role.ec2_role.name]
  
}