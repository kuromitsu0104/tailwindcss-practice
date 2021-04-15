###########
#   ECR   #
###########

# nginx
resource "aws_ecr_repository" "ome-report-bff_nginx" {
  name = "ome-report-bff_nginx"
}
resource "aws_ecr_lifecycle_policy" "ome-report-bff_nginx-policy" {
  repository = aws_ecr_repository.ome-report-bff_nginx.name

  policy = <<EOF
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Keep last 30 release tagged images",
        "selection": {
          "tagStatus": "tagged",
          "tagPrefixList": ["latest"],
          "countType": "imageCountMoreThan",
          "countNumber": 30
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
EOF
}
# frontend
resource "aws_ecr_repository" "ome-report-bff_frontend" {
  name = "ome-report-bff_frontend"
}
resource "aws_ecr_lifecycle_policy" "ome-report-bff_frontend-policy" {
  repository = aws_ecr_repository.ome-report-bff_frontend.name

  policy = <<EOF
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Keep last 30 release tagged images",
        "selection": {
          "tagStatus": "tagged",
          "tagPrefixList": ["latest"],
          "countType": "imageCountMoreThan",
          "countNumber": 30
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
EOF
}
# backend
resource "aws_ecr_repository" "ome-report-bff_backend" {
  name = "ome-report-bff_backend"
}
resource "aws_ecr_lifecycle_policy" "ome-report-bff_backend-policy" {
  repository = aws_ecr_repository.ome-report-bff_backend.name

  policy = <<EOF
  {
    "rules": [
      {
        "rulePriority": 1,
        "description": "Keep last 30 release tagged images",
        "selection": {
          "tagStatus": "tagged",
          "tagPrefixList": ["latest"],
          "countType": "imageCountMoreThan",
          "countNumber": 30
        },
        "action": {
          "type": "expire"
        }
      }
    ]
  }
EOF
}
