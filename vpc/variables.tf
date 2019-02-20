variable "name" {
  default = "improving"
}

variable "cidr" {
  default = "192.168.0.0/22"
}

// Public Subnet
variable "public_subnets" {
  type = "list"
  default     = ["192.168.0.0/24"]
}

variable "private_subnets" {
  type = "list"
  default     =  ["192.168.1.0/24"]
}

variable "azs" {
  type = "list"
  default     = ["us-west-2a"]
}

variable "enable_dns_hostnames" {
  default     = true
}

variable "enable_dns_support" {
  default     = true
}

variable "enable_nat_gateway" {
  default     = true
}

// habilitar ip public no lançamento da instância
variable "map_public_ip_on_launch" {
  default     = true
}

variable "private_propagating_vgws" {
  type = "list"
  default     = []
}

variable "public_propagating_vgws" {
  type = "list"
  default     = []
}

variable "tags" {
  default     = {}
}
