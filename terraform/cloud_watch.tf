#################
# CloudWatchLog #
#################
resource "aws_cloudwatch_log_group" "ome-report-bff-ecs-nginx" {
  name              = "/ecs/nginx"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "ome-report-bff-ecs-frontend" {
  name              = "/ecs/frontend"
  retention_in_days = 180
}
resource "aws_cloudwatch_log_group" "ome-report-bff-ecs-backend" {
  name              = "/ecs/backend"
  retention_in_days = 180
}
