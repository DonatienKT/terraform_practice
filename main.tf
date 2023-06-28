
resource "aws_sns_topic" "demo-p" {
  name = var.topic_name
  tags = {
    team = var.team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.demo-p.arn
  protocol  = var.protocol_type
  endpoint  = var.end_point
}


