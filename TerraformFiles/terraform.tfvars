# cluster details
region                               = "ap-south-1"
cluster_role_name                    = "eks-cluster-role"
node_role_name                       = "worker-node-role"
cluster_name                         = "eks-cluster"
subnet_ids                           = ["subnet-0aee4db39076b7662", "subnet-0f01e984cc846527b", "subnet-02f01d4dfa58d52bd"]
cluster_version                      = "1.24"
cluster_endpoint_public_access       = true
cluster_endpoint_private_access      = false
cluster_endpoint_public_access_cidrs = ["0.0.0.0/0"]
cluster_service_ipv4_cidr            = "10.0.0.0/16"
cluster_ip_family                    = "ipv4"
addon_name_kube                      = "kube-proxy"
addon_version_kube                   = "v1.23.16-eksbuild.2"
resolve_conflicts_name_kube          = "OVERWRITE"
addon_name_vpc                       = "vpc-cni"
addon_version_cni                    = "v1.12.6-eksbuild.1"
resolve_conflicts_name_vpc           = "OVERWRITE"
addon_name_dns                       = "coredns"
addon_version_dns                    = "v1.8.7-eksbuild.4"
resolve_conflicts_name_dns           = "OVERWRITE"
node_group_name                      = "worker_nodes"
desired_size                         = 1
max_size                             = 1
min_size                             = 1
ami_type                             = "AL2_x86_64"
capacity_type                        = "ON_DEMAND"
disk_size                            = 20
instance_type                        = "t2.medium"
inbound_traffic_cidr                 = "0.0.0.0/0"
egress_traffic_cidr                  = "0.0.0.0/0"
inbound_ports = [
  { port = 22, protocol = "TCP" },
  { port = 80, protocol = "TCP" },
  { port = 443, protocol = "TCP" }
]
outbound_ports = [
  { port = 0, protocol = "-1" }
]
