[command]/home/runner/work/_temp/9d449705-94dd-4cf5-8a4f-88117930e2c3/terraform-bin show -no-color tfplan

Terraform used the selected providers to generate the following execution
plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.alb.aws_lb.main will be created
  + resource "aws_lb" "main" {
      + arn                                                          = (known after apply)
      + arn_suffix                                                   = (known after apply)
      + client_keep_alive                                            = 3600
      + desync_mitigation_mode                                       = "defensive"
      + dns_name                                                     = (known after apply)
      + drop_invalid_header_fields                                   = false
      + enable_deletion_protection                                   = false
      + enable_http2                                                 = true
      + enable_tls_version_and_cipher_suite_headers                  = false
      + enable_waf_fail_open                                         = false
      + enable_xff_client_port                                       = false
      + enable_zonal_shift                                           = false
      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)
      + id                                                           = (known after apply)
      + idle_timeout                                                 = 60
      + internal                                                     = false
      + ip_address_type                                              = (known after apply)
      + load_balancer_type                                           = "application"
      + name                                                         = "my-alb"
      + name_prefix                                                  = (known after apply)
      + preserve_host_header                                         = false
      + security_groups                                              = (known after apply)
      + subnets                                                      = (known after apply)
      + tags_all                                                     = (known after apply)
      + vpc_id                                                       = (known after apply)
      + xff_header_processing_mode                                   = "append"
      + zone_id                                                      = (known after apply)

      + subnet_mapping (known after apply)
    }

  # module.alb.aws_lb_listener.http will be created
  + resource "aws_lb_listener" "http" {
      + arn                                                                   = (known after apply)
      + id                                                                    = (known after apply)
      + load_balancer_arn                                                     = (known after apply)
      + port                                                                  = 80
      + protocol                                                              = "HTTP"
      + routing_http_request_x_amzn_mtls_clientcert_header_name               = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = (known after apply)
      + routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = (known after apply)
      + routing_http_request_x_amzn_tls_cipher_suite_header_name              = (known after apply)
      + routing_http_request_x_amzn_tls_version_header_name                   = (known after apply)
      + routing_http_response_access_control_allow_credentials_header_value   = (known after apply)
      + routing_http_response_access_control_allow_headers_header_value       = (known after apply)
      + routing_http_response_access_control_allow_methods_header_value       = (known after apply)
      + routing_http_response_access_control_allow_origin_header_value        = (known after apply)
      + routing_http_response_access_control_expose_headers_header_value      = (known after apply)
      + routing_http_response_access_control_max_age_header_value             = (known after apply)
      + routing_http_response_content_security_policy_header_value            = (known after apply)
      + routing_http_response_server_enabled                                  = (known after apply)
      + routing_http_response_strict_transport_security_header_value          = (known after apply)
      + routing_http_response_x_content_type_options_header_value             = (known after apply)
      + routing_http_response_x_frame_options_header_value                    = (known after apply)
      + ssl_policy                                                            = (known after apply)
      + tags_all                                                              = (known after apply)
      + tcp_idle_timeout_seconds                                              = (known after apply)

      + default_action {
          + order            = (known after apply)
          + target_group_arn = (known after apply)
          + type             = "forward"
        }

      + mutual_authentication (known after apply)
    }

  # module.alb.aws_lb_target_group.main will be created
  + resource "aws_lb_target_group" "main" {
      + arn                                = (known after apply)
      + arn_suffix                         = (known after apply)
      + connection_termination             = (known after apply)
      + deregistration_delay               = "300"
      + id                                 = (known after apply)
      + ip_address_type                    = (known after apply)
      + lambda_multi_value_headers_enabled = false
      + load_balancer_arns                 = (known after apply)
      + load_balancing_algorithm_type      = (known after apply)
      + load_balancing_anomaly_mitigation  = (known after apply)
      + load_balancing_cross_zone_enabled  = (known after apply)
      + name                               = "my-alb-tg"
      + name_prefix                        = (known after apply)
      + port                               = 80
      + preserve_client_ip                 = (known after apply)
      + protocol                           = "HTTP"
      + protocol_version                   = (known after apply)
      + proxy_protocol_v2                  = false
      + slow_start                         = 0
      + tags_all                           = (known after apply)
      + target_type                        = "instance"
      + vpc_id                             = (known after apply)

      + health_check {
          + enabled             = true
          + healthy_threshold   = 5
          + interval            = 30
          + matcher             = "200"
          + path                = "/"
          + port                = "traffic-port"
          + protocol            = "HTTP"
          + timeout             = 5
          + unhealthy_threshold = 2
        }

      + stickiness (known after apply)

      + target_failover (known after apply)

      + target_group_health (known after apply)

      + target_health_state (known after apply)
    }

  # module.asg.aws_autoscaling_group.asg will be created
  + resource "aws_autoscaling_group" "asg" {
      + arn                              = (known after apply)
      + availability_zones               = (known after apply)
      + default_cooldown                 = (known after apply)
      + desired_capacity                 = 2
      + force_delete                     = false
      + force_delete_warm_pool           = false
      + health_check_grace_period        = 300
      + health_check_type                = (known after apply)
      + id                               = (known after apply)
      + ignore_failed_scaling_activities = false
      + load_balancers                   = (known after apply)
      + max_size                         = 2
      + metrics_granularity              = "1Minute"
      + min_size                         = 2
      + name                             = (known after apply)
      + name_prefix                      = (known after apply)
      + predicted_capacity               = (known after apply)
      + protect_from_scale_in            = false
      + service_linked_role_arn          = (known after apply)
      + target_group_arns                = (known after apply)
      + vpc_zone_identifier              = (known after apply)
      + wait_for_capacity_timeout        = "10m"
      + warm_pool_size                   = (known after apply)

      + availability_zone_distribution (known after apply)

      + launch_template {
          + id      = (known after apply)
          + name    = (known after apply)
          + version = "$Latest"
        }

      + mixed_instances_policy (known after apply)

      + tag {
          + key                 = "Name"
          + propagate_at_launch = true
          + value               = "my-asg"
        }

      + traffic_source (known after apply)
    }

  # module.asg.aws_launch_template.asg_lt will be created
  + resource "aws_launch_template" "asg_lt" {
      + arn                    = (known after apply)
      + default_version        = (known after apply)
      + id                     = (known after apply)
      + image_id               = "ami-08b5b3a93ed654d19"
      + instance_type          = "t2.micro"
      + latest_version         = (known after apply)
      + name                   = (known after apply)
      + name_prefix            = "my-asg-launch-template"
      + tags_all               = (known after apply)
      + user_data              = "IyEvYmluL2Jhc2gKIyBVcGRhdGUgdGhlIHN5c3RlbQphcHQgdXBkYXRlIC15ICYmIGFwdCB1cGdyYWRlIC15CgojIEluc3RhbGwgTmdpbngKYXB0IGluc3RhbGwgLXkgbmdpbngKCiMgU3RhcnQgYW5kIGVuYWJsZSBOZ2lueApzeXN0ZW1jdGwgc3RhcnQgbmdpbngKc3lzdGVtY3RsIGVuYWJsZSBuZ2lueAoKIyBDcmVhdGUgYSBzaW1wbGUgd2ViIHBhZ2UKZWNobyAiPGgxPldlbGNvbWUgdG8gQVNHIEluc3RhbmNlPC9oMT4iID4gL3Zhci93d3cvaHRtbC9pbmRleC5odG1s"
      + vpc_security_group_ids = (known after apply)

      + metadata_options (known after apply)
    }

  # module.rds.aws_db_instance.default will be created
  + resource "aws_db_instance" "default" {
      + address                               = (known after apply)
      + allocated_storage                     = 20
      + apply_immediately                     = false
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_target                         = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + database_insights_mode                = (known after apply)
      + db_name                               = "mydb"
      + db_subnet_group_name                  = "mydb-subnet-group"
      + dedicated_log_volume                  = false
      + delete_automated_backups              = true
      + domain_fqdn                           = (known after apply)
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_lifecycle_support              = (known after apply)
      + engine_version                        = "8.0"
      + engine_version_actual                 = (known after apply)
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = (known after apply)
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t3.micro"
      + iops                                  = (known after apply)
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + listener_endpoint                     = (known after apply)
      + maintenance_window                    = (known after apply)
      + master_user_secret                    = (known after apply)
      + master_user_secret_kms_key_id         = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = false
      + nchar_character_set_name              = (known after apply)
      + network_type                          = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = "default.mysql8.0"
      + password                              = (sensitive value)
      + password_wo                           = (write-only attribute)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replica_mode                          = (known after apply)
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = false
      + snapshot_identifier                   = (known after apply)
      + status                                = (known after apply)
      + storage_throughput                    = (known after apply)
      + storage_type                          = (known after apply)
      + tags_all                              = (known after apply)
      + timezone                              = (known after apply)
      + username                              = "admin"
      + vpc_security_group_ids                = (known after apply)
    }

  # module.rds.aws_db_subnet_group.default will be created
  + resource "aws_db_subnet_group" "default" {
      + arn                     = (known after apply)
      + description             = "RDS Subnet Group"
      + id                      = (known after apply)
      + name                    = "mydb-subnet-group"
      + name_prefix             = (known after apply)
      + subnet_ids              = (known after apply)
      + supported_network_types = (known after apply)
      + tags_all                = (known after apply)
      + vpc_id                  = (known after apply)
    }

  # module.rds_sg.aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Security group for RDS"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 3306
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 3306
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "rds-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.sg.aws_security_group.web_sg will be created
  + resource "aws_security_group" "web_sg" {
      + arn                    = (known after apply)
      + description            = "Security group for web servers"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
                # (1 unchanged attribute hidden)
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
                # (1 unchanged attribute hidden)
            },
        ]
      + name                   = "web-sg"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags_all               = (known after apply)
      + vpc_id                 = (known after apply)
    }

  # module.vpc.aws_internet_gateway.igw will be created
  + resource "aws_internet_gateway" "igw" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags_all = (known after apply)
      + vpc_id   = (known after apply)
    }

  # module.vpc.aws_route_table.private will be created
  + resource "aws_route_table" "private" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = (known after apply)
      + tags_all         = (known after apply)
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table.public will be created
  + resource "aws_route_table" "public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags_all         = (known after apply)
      + vpc_id           = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[0] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.private[1] will be created
  + resource "aws_route_table_association" "private" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[0] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_route_table_association.public[1] will be created
  + resource "aws_route_table_association" "public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.vpc.aws_subnet.private[0] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.3.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.private[1] will be created
  + resource "aws_subnet" "private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.4.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[0] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1a"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_subnet.public[1] will be created
  + resource "aws_subnet" "public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = "us-east-1b"
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.2.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = true
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags_all                                       = (known after apply)
      + vpc_id                                         = (known after apply)
    }

  # module.vpc.aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags_all                             = (known after apply)
    }

Plan: 21 to add, 0 to change, 0 to destroy.
::debug::Terraform exited with code 0.
::debug::stdout: %0ATerraform used the selected providers to generate the following execution%0Aplan. Resource actions are indicated with the following symbols:%0A  + create%0A%0ATerraform will perform the following actions:%0A%0A  # module.alb.aws_lb.main will be created%0A  + resource "aws_lb" "main" {%0A      + arn                                                          = (known after apply)%0A      + arn_suffix                                                   = (known after apply)%0A      + client_keep_alive                                            = 3600%0A      + desync_mitigation_mode                                       = "defensive"%0A      + dns_name                                                     = (known after apply)%0A      + drop_invalid_header_fields                                   = false%0A      + enable_deletion_protection                                   = false%0A      + enable_http2                                                 = true%0A      + enable_tls_version_and_cipher_suite_headers                  = false%0A      + enable_waf_fail_open                                         = false%0A      + enable_xff_client_port                                       = false%0A      + enable_zonal_shift                                           = false%0A      + enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)%0A      + id                                                           = (known after apply)%0A      + idle_timeout                                                 = 60%0A      + internal                                                     = false%0A      + ip_address_type                                              = (known after apply)%0A      + load_balancer_type                                           = "application"%0A      + name                                                         = "my-alb"%0A      + name_prefix                                                  = (known after apply)%0A      + preserve_host_header                                         = false%0A      + security_groups                                              = (known after apply)%0A      + subnets                                                      = (known after apply)%0A      + tags_all                                                     = (known after apply)%0A      + vpc_id                                                       = (known after apply)%0A      + xff_header_processing_mode                                   = "append"%0A      + zone_id                                                      = (known after apply)%0A%0A      + subnet_mapping (known after apply)%0A    }%0A%0A  # module.alb.aws_lb_listener.http will be created%0A  + resource "aws_lb_listener" "http" {%0A      + arn                                                                   = (known after apply)%0A      + id                                                                    = (known after apply)%0A      + load_balancer_arn                                                     = (known after apply)%0A      + port                                                                  = 80%0A      + protocol                                                              = "HTTP"%0A      + routing_http_request_x_amzn_mtls_clientcert_header_name               = (known after apply)%0A      + routing_http_request_x_amzn_mtls_clientcert_issuer_header_name        = (known after apply)%0A      + routing_http_request_x_amzn_mtls_clientcert_leaf_header_name          = (known after apply)%0A      + routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)%0A      + routing_http_request_x_amzn_mtls_clientcert_subject_header_name       = (known after apply)%0A      + routing_http_request_x_amzn_mtls_clientcert_validity_header_name      = (known after apply)%0A      + routing_http_request_x_amzn_tls_cipher_suite_header_name              = (known after apply)%0A      + routing_http_request_x_amzn_tls_version_header_name                   = (known after apply)%0A      + routing_http_response_access_control_allow_credentials_header_value   = (known after apply)%0A      + routing_http_response_access_control_allow_headers_header_value       = (known after apply)%0A      + routing_http_response_access_control_allow_methods_header_value       = (known after apply)%0A      + routing_http_response_access_control_allow_origin_header_value        = (known after apply)%0A      + routing_http_response_access_control_expose_headers_header_value      = (known after apply)%0A      + routing_http_response_access_control_max_age_header_value             = (known after apply)%0A      + routing_http_response_content_security_policy_header_value            = (known after apply)%0A      + routing_http_response_server_enabled                                  = (known after apply)%0A      + routing_http_response_strict_transport_security_header_value          = (known after apply)%0A      + routing_http_response_x_content_type_options_header_value             = (known after apply)%0A      + routing_http_response_x_frame_options_header_value                    = (known after apply)%0A      + ssl_policy                                                            = (known after apply)%0A      + tags_all                                                              = (known after apply)%0A      + tcp_idle_timeout_seconds                                              = (known after apply)%0A%0A      + default_action {%0A          + order            = (known after apply)%0A          + target_group_arn = (known after apply)%0A          + type             = "forward"%0A        }%0A%0A      + mutual_authentication (known after apply)%0A    }%0A%0A  # module.alb.aws_lb_target_group.main will be created%0A  + resource "aws_lb_target_group" "main" {%0A      + arn                                = (known after apply)%0A      + arn_suffix                         = (known after apply)%0A      + connection_termination             = (known after apply)%0A      + deregistration_delay               = "300"%0A      + id                                 = (known after apply)%0A      + ip_address_type                    = (known after apply)%0A      + lambda_multi_value_headers_enabled = false%0A      + load_balancer_arns                 = (known after apply)%0A      + load_balancing_algorithm_type      = (known after apply)%0A      + load_balancing_anomaly_mitigation  = (known after apply)%0A      + load_balancing_cross_zone_enabled  = (known after apply)%0A      + name                               = "my-alb-tg"%0A      + name_prefix                        = (known after apply)%0A      + port                               = 80%0A      + preserve_client_ip                 = (known after apply)%0A      + protocol                           = "HTTP"%0A      + protocol_version                   = (known after apply)%0A      + proxy_protocol_v2                  = false%0A      + slow_start                         = 0%0A      + tags_all                           = (known after apply)%0A      + target_type                        = "instance"%0A      + vpc_id                             = (known after apply)%0A%0A      + health_check {%0A          + enabled             = true%0A          + healthy_threshold   = 5%0A          + interval            = 30%0A          + matcher             = "200"%0A          + path                = "/"%0A          + port                = "traffic-port"%0A          + protocol            = "HTTP"%0A          + timeout             = 5%0A          + unhealthy_threshold = 2%0A        }%0A%0A      + stickiness (known after apply)%0A%0A      + target_failover (known after apply)%0A%0A      + target_group_health (known after apply)%0A%0A      + target_health_state (known after apply)%0A    }%0A%0A  # module.asg.aws_autoscaling_group.asg will be created%0A  + resource "aws_autoscaling_group" "asg" {%0A      + arn                              = (known after apply)%0A      + availability_zones               = (known after apply)%0A      + default_cooldown                 = (known after apply)%0A      + desired_capacity                 = 2%0A      + force_delete                     = false%0A      + force_delete_warm_pool           = false%0A      + health_check_grace_period        = 300%0A      + health_check_type                = (known after apply)%0A      + id                               = (known after apply)%0A      + ignore_failed_scaling_activities = false%0A      + load_balancers                   = (known after apply)%0A      + max_size                         = 2%0A      + metrics_granularity              = "1Minute"%0A      + min_size                         = 2%0A      + name                             = (known after apply)%0A      + name_prefix                      = (known after apply)%0A      + predicted_capacity               = (known after apply)%0A      + protect_from_scale_in            = false%0A      + service_linked_role_arn          = (known after apply)%0A      + target_group_arns                = (known after apply)%0A      + vpc_zone_identifier              = (known after apply)%0A      + wait_for_capacity_timeout        = "10m"%0A      + warm_pool_size                   = (known after apply)%0A%0A      + availability_zone_distribution (known after apply)%0A%0A      + launch_template {%0A          + id      = (known after apply)%0A          + name    = (known after apply)%0A          + version = "$Latest"%0A        }%0A%0A      + mixed_instances_policy (known after apply)%0A%0A      + tag {%0A          + key                 = "Name"%0A          + propagate_at_launch = true%0A          + value               = "my-asg"%0A        }%0A%0A      + traffic_source (known after apply)%0A    }%0A%0A  # module.asg.aws_launch_template.asg_lt will be created%0A  + resource "aws_launch_template" "asg_lt" {%0A      + arn                    = (known after apply)%0A      + default_version        = (known after apply)%0A      + id                     = (known after apply)%0A      + image_id               = "ami-08b5b3a93ed654d19"%0A      + instance_type          = "t2.micro"%0A      + latest_version         = (known after apply)%0A      + name                   = (known after apply)%0A      + name_prefix            = "my-asg-launch-template"%0A      + tags_all               = (known after apply)%0A      + user_data              = "IyEvYmluL2Jhc2gKIyBVcGRhdGUgdGhlIHN5c3RlbQphcHQgdXBkYXRlIC15ICYmIGFwdCB1cGdyYWRlIC15CgojIEluc3RhbGwgTmdpbngKYXB0IGluc3RhbGwgLXkgbmdpbngKCiMgU3RhcnQgYW5kIGVuYWJsZSBOZ2lueApzeXN0ZW1jdGwgc3RhcnQgbmdpbngKc3lzdGVtY3RsIGVuYWJsZSBuZ2lueAoKIyBDcmVhdGUgYSBzaW1wbGUgd2ViIHBhZ2UKZWNobyAiPGgxPldlbGNvbWUgdG8gQVNHIEluc3RhbmNlPC9oMT4iID4gL3Zhci93d3cvaHRtbC9pbmRleC5odG1s"%0A      + vpc_security_group_ids = (known after apply)%0A%0A      + metadata_options (known after apply)%0A    }%0A%0A  # module.rds.aws_db_instance.default will be created%0A  + resource "aws_db_instance" "default" {%0A      + address                               = (known after apply)%0A      + allocated_storage                     = 20%0A      + apply_immediately                     = false%0A      + arn                                   = (known after apply)%0A      + auto_minor_version_upgrade            = true%0A      + availability_zone                     = (known after apply)%0A      + backup_retention_period               = (known after apply)%0A      + backup_target                         = (known after apply)%0A      + backup_window                         = (known after apply)%0A      + ca_cert_identifier                    = (known after apply)%0A      + character_set_name                    = (known after apply)%0A      + copy_tags_to_snapshot                 = false%0A      + database_insights_mode                = (known after apply)%0A      + db_name                               = "mydb"%0A      + db_subnet_group_name                  = "mydb-subnet-group"%0A      + dedicated_log_volume                  = false%0A      + delete_automated_backups              = true%0A      + domain_fqdn                           = (known after apply)%0A      + endpoint                              = (known after apply)%0A      + engine                                = "mysql"%0A      + engine_lifecycle_support              = (known after apply)%0A      + engine_version                        = "8.0"%0A      + engine_version_actual                 = (known after apply)%0A      + hosted_zone_id                        = (known after apply)%0A      + id                                    = (known after apply)%0A      + identifier                            = (known after apply)%0A      + identifier_prefix                     = (known after apply)%0A      + instance_class                        = "db.t3.micro"%0A      + iops                                  = (known after apply)%0A      + kms_key_id                            = (known after apply)%0A      + latest_restorable_time                = (known after apply)%0A      + license_model                         = (known after apply)%0A      + listener_endpoint                     = (known after apply)%0A      + maintenance_window                    = (known after apply)%0A      + master_user_secret                    = (known after apply)%0A      + master_user_secret_kms_key_id         = (known after apply)%0A      + monitoring_interval                   = 0%0A      + monitoring_role_arn                   = (known after apply)%0A      + multi_az                              = false%0A      + nchar_character_set_name              = (known after apply)%0A      + network_type                          = (known after apply)%0A      + option_group_name                     = (known after apply)%0A      + parameter_group_name                  = "default.mysql8.0"%0A      + password                              = (sensitive value)%0A      + password_wo                           = (write-only attribute)%0A      + performance_insights_enabled          = false%0A      + performance_insights_kms_key_id       = (known after apply)%0A      + performance_insights_retention_period = (known after apply)%0A      + port                                  = (known after apply)%0A      + publicly_accessible                   = false%0A      + replica_mode                          = (known after apply)%0A      + replicas                              = (known after apply)%0A      + resource_id                           = (known after apply)%0A      + skip_final_snapshot                   = false%0A      + snapshot_identifier                   = (known after apply)%0A      + status                                = (known after apply)%0A      + storage_throughput                    = (known after apply)%0A      + storage_type                          = (known after apply)%0A      + tags_all                              = (known after apply)%0A      + timezone                              = (known after apply)%0A      + username                              = "admin"%0A      + vpc_security_group_ids                = (known after apply)%0A    }%0A%0A  # module.rds.aws_db_subnet_group.default will be created%0A  + resource "aws_db_subnet_group" "default" {%0A      + arn                     = (known after apply)%0A      + description             = "RDS Subnet Group"%0A      + id                      = (known after apply)%0A      + name                    = "mydb-subnet-group"%0A      + name_prefix             = (known after apply)%0A      + subnet_ids              = (known after apply)%0A      + supported_network_types = (known after apply)%0A      + tags_all                = (known after apply)%0A      + vpc_id                  = (known after apply)%0A    }%0A%0A  # module.rds_sg.aws_security_group.web_sg will be created%0A  + resource "aws_security_group" "web_sg" {%0A      + arn                    = (known after apply)%0A      + description            = "Security group for RDS"%0A      + egress                 = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 0%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "-1"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 0%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + id                     = (known after apply)%0A      + ingress                = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 3306%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "tcp"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 3306%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + name                   = "rds-sg"%0A      + name_prefix            = (known after apply)%0A      + owner_id               = (known after apply)%0A      + revoke_rules_on_delete = false%0A      + tags_all               = (known after apply)%0A      + vpc_id                 = (known after apply)%0A    }%0A%0A  # module.sg.aws_security_group.web_sg will be created%0A  + resource "aws_security_group" "web_sg" {%0A      + arn                    = (known after apply)%0A      + description            = "Security group for web servers"%0A      + egress                 = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 0%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "-1"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 0%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + id                     = (known after apply)%0A      + ingress                = [%0A          + {%0A              + cidr_blocks      = [%0A                  + "0.0.0.0/0",%0A                ]%0A              + from_port        = 80%0A              + ipv6_cidr_blocks = []%0A              + prefix_list_ids  = []%0A              + protocol         = "tcp"%0A              + security_groups  = []%0A              + self             = false%0A              + to_port          = 80%0A                # (1 unchanged attribute hidden)%0A            },%0A        ]%0A      + name                   = "web-sg"%0A      + name_prefix            = (known after apply)%0A      + owner_id               = (known after apply)%0A      + revoke_rules_on_delete = false%0A      + tags_all               = (known after apply)%0A      + vpc_id                 = (known after apply)%0A    }%0A%0A  # module.vpc.aws_internet_gateway.igw will be created%0A  + resource "aws_internet_gateway" "igw" {%0A      + arn      = (known after apply)%0A      + id       = (known after apply)%0A      + owner_id = (known after apply)%0A      + tags_all = (known after apply)%0A      + vpc_id   = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table.private will be created%0A  + resource "aws_route_table" "private" {%0A      + arn              = (known after apply)%0A      + id               = (known after apply)%0A      + owner_id         = (known after apply)%0A      + propagating_vgws = (known after apply)%0A      + route            = (known after apply)%0A      + tags_all         = (known after apply)%0A      + vpc_id           = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table.public will be created%0A  + resource "aws_route_table" "public" {%0A      + arn              = (known after apply)%0A      + id               = (known after apply)%0A      + owner_id         = (known after apply)%0A      + propagating_vgws = (known after apply)%0A      + route            = [%0A          + {%0A              + cidr_block                 = "0.0.0.0/0"%0A              + gateway_id                 = (known after apply)%0A                # (11 unchanged attributes hidden)%0A            },%0A        ]%0A      + tags_all         = (known after apply)%0A      + vpc_id           = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table_association.private[0] will be created%0A  + resource "aws_route_table_association" "private" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table_association.private[1] will be created%0A  + resource "aws_route_table_association" "private" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table_association.public[0] will be created%0A  + resource "aws_route_table_association" "public" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_route_table_association.public[1] will be created%0A  + resource "aws_route_table_association" "public" {%0A      + id             = (known after apply)%0A      + route_table_id = (known after apply)%0A      + subnet_id      = (known after apply)%0A    }%0A%0A  # module.vpc.aws_subnet.private[0] will be created%0A  + resource "aws_subnet" "private" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "us-east-1a"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.3.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = false%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = (known after apply)%0A    }%0A%0A  # module.vpc.aws_subnet.private[1] will be created%0A  + resource "aws_subnet" "private" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "us-east-1b"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.4.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = false%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = (known after apply)%0A    }%0A%0A  # module.vpc.aws_subnet.public[0] will be created%0A  + resource "aws_subnet" "public" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "us-east-1a"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.1.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = true%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = (known after apply)%0A    }%0A%0A  # module.vpc.aws_subnet.public[1] will be created%0A  + resource "aws_subnet" "public" {%0A      + arn                                            = (known after apply)%0A      + assign_ipv6_address_on_creation                = false%0A      + availability_zone                              = "us-east-1b"%0A      + availability_zone_id                           = (known after apply)%0A      + cidr_block                                     = "10.0.2.0/24"%0A      + enable_dns64                                   = false%0A      + enable_resource_name_dns_a_record_on_launch    = false%0A      + enable_resource_name_dns_aaaa_record_on_launch = false%0A      + id                                             = (known after apply)%0A      + ipv6_cidr_block_association_id                 = (known after apply)%0A      + ipv6_native                                    = false%0A      + map_public_ip_on_launch                        = true%0A      + owner_id                                       = (known after apply)%0A      + private_dns_hostname_type_on_launch            = (known after apply)%0A      + tags_all                                       = (known after apply)%0A      + vpc_id                                         = (known after apply)%0A    }%0A%0A  # module.vpc.aws_vpc.main will be created%0A  + resource "aws_vpc" "main" {%0A      + arn                                  = (known after apply)%0A      + cidr_block                           = "10.0.0.0/16"%0A      + default_network_acl_id               = (known after apply)%0A      + default_route_table_id               = (known after apply)%0A      + default_security_group_id            = (known after apply)%0A      + dhcp_options_id                      = (known after apply)%0A      + enable_dns_hostnames                 = (known after apply)%0A      + enable_dns_support                   = true%0A      + enable_network_address_usage_metrics = (known after apply)%0A      + id                                   = (known after apply)%0A      + instance_tenancy                     = "default"%0A      + ipv6_association_id                  = (known after apply)%0A      + ipv6_cidr_block                      = (known after apply)%0A      + ipv6_cidr_block_network_border_group = (known after apply)%0A      + main_route_table_id                  = (known after apply)%0A      + owner_id                             = (known after apply)%0A      + tags_all                             = (known after apply)%0A    }%0A%0APlan: 21 to add, 0 to change, 0 to destroy.%0A
::debug::stderr: 
::debug::exitcode: 0
