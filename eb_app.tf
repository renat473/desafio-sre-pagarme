resource "aws_elastic_beanstalk_application" "eb_desafio" {
  name        = "app-pagarme-desafio"
  description = "app desafio pagarme"

} #eb-tf-app

resource "aws_elastic_beanstalk_application_version" "desafio_app_version" {
  bucket      = aws_s3_bucket.eb_bucket.id
  key         = aws_s3_bucket_object.eb_bucket_obj.id
  application = aws_elastic_beanstalk_application.eb_desafio.name
  name        = "app-pagarme-desafio-version-dev-desafio"

}

data "aws_elastic_beanstalk_solution_stack" "php_latest" {
  most_recent = true

  name_regex = "^64bit Amazon Linux (.*) running PHP 8.0$"
}


resource "aws_elastic_beanstalk_environment" "desafio" {

  name                = "app-pagarme-desafio"
  application         = aws_elastic_beanstalk_application.eb_desafio.name
  solution_stack_name = data.aws_elastic_beanstalk_solution_stack.php_latest.name
  description         = "environment php app"
  version_label       = aws_elastic_beanstalk_application_version.desafio_app_version.name

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = "aws-elasticbeanstalk-ec2-role"
  }

}
