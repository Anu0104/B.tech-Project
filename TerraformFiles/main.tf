module "aws_eks" {
  source                               = "./module/aws-eks"
  cluster_version                      = var.cluster_version
  cluster_name                         = var.cluster_name
  subnet_ids                           = var.subnet_ids
  cluster_endpoint_public_access       = var.cluster_endpoint_public_access
  cluster_endpoint_private_access      = var.cluster_endpoint_private_access
  cluster_endpoint_public_access_cidrs = var.cluster_endpoint_public_access_cidrs
  cluster_service_ipv4_cidr            = var.cluster_service_ipv4_cidr
  cluster_ip_family                    = var.cluster_ip_family
  addon_name_kube                      = var.addon_name_kube
  addon_version_kube                   = var.addon_version_kube
  resolve_conflicts_name_kube          = var.resolve_conflicts_name_kube
  addon_name_vpc                       = var.addon_name_vpc
  addon_version_cni                    = var.addon_version_cni
  resolve_conflicts_name_vpc           = var.resolve_conflicts_name_vpc
  addon_name_dns                       = var.addon_name_dns
  addon_version_dns                    = var.addon_version_dns
  resolve_conflicts_name_dns           = var.resolve_conflicts_name_dns
  node_group_name                      = var.node_group_name
  desired_size                         = var.desired_size
  max_size                             = var.max_size
  min_size                             = var.min_size
  ami_type                             = var.ami_type
  capacity_type                        = var.capacity_type
  disk_size                            = var.disk_size
  instance_type                        = var.instance_type
  cluster_role_name                    = var.cluster_role_name
  node_role_name                       = var.node_role_name
  inbound_traffic_cidr                 = var.inbound_traffic_cidr
  egress_traffic_cidr                  = var.egress_traffic_cidr
  inbound_ports                        = var.inbound_ports
  outbound_ports                       = var.outbound_ports
}
data "aws_eks_cluster" "cluster" {
  depends_on = [
    module.aws_eks
  ]
  name = module.aws_eks.cluster_name
}






