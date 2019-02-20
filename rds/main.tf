data "terraform_remote_state" "vpc" {
  backend = "local"

  config {
    path = "../vpc/terraform.tfstate"
  }
}

#
# Security group resources
#

resource "aws_security_group" "postgresql" {
#  vpc_id = "${var.vpc_id}"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
  
   ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  ingress {
    from_port = 5432
    to_port = 5432
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags {
    Name        = "sgDatabaseServer"
    Project     = "${var.project}"
    Environment = "${var.environment}"
  }
}

resource "aws_db_subnet_group" "dbimproving" {
  name       = "dbimproving"
#  subnet_ids = ["${aws_subnet.private.id}", "${aws_subnet.public.id}"]
#  subnet_ids = ["${aws_subnet.Private.id}"]
  tags {
    Name = "dbimproving"
  }
}

#
# RDS resources
#

resource "aws_db_instance" "postgresql" {
  allocated_storage          = "${var.allocated_storage}"
  engine                     = "postgres"
  engine_version             = "${var.engine_version}"
  identifier                 = "${var.database_identifier}"
  instance_class             = "${var.instance_type}"
  storage_type               = "${var.storage_type}"
  name                       = "${var.database_name}"
  password                   = "${var.database_password}"
  username                   = "${var.database_username}"
  port                       = "${var.database_port}"
  backup_retention_period    = "${var.backup_retention_period}"
  backup_window              = "${var.backup_window}"
  maintenance_window         = "${var.maintenance_window}"
  auto_minor_version_upgrade = "${var.auto_minor_version_upgrade}"
  final_snapshot_identifier  = "${var.final_snapshot_identifier}"
  skip_final_snapshot        = "${var.skip_final_snapshot}"
  copy_tags_to_snapshot      = "${var.copy_tags_to_snapshot}"
  multi_az                   = "${var.multi_availability_zone}"
#  vpc_security_group_ids     = ["${aws_security_group.postgresql.id}"]
  db_subnet_group_name       = "${var.subnet_group}"
  parameter_group_name       = "${var.parameter_group}"

  tags {
    Name        = "DatabaseServer"
    Project     = "${var.project}"
    Environment = "${var.environment}"
  }


#  provisioner "file" {
#    source      = "../acesso_init.sql"
#    destination = "/tmp/acesso_init.sql"
#  }

#  provisioner "remote-exec" {
#    inline = [
#      "chmod +x /tmp/acesso_init.sql",
#      "/tmp/acesso_init.sql",
#    ]
#  }
}
