

resource "aws_sns_topic" "demo" {
  name = var.topic_name
  tags = {
    team = var.team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.demo.arn
  protocol  = var.protocol
  endpoint  = "zakanemohamed35@gmail.com"
}

