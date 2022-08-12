variable "domain_name" {
  description = "Domain Name"
  default = "somos.world"
}

variable "cert_arn" {
  description = "SSL Cert"
  default = "arn:aws:acm:us-east-1:504084586672:certificate/d5386133-f56b-4d53-8889-be0e2032b03c"
}

variable "cert_arn_two" {
  description = "SSL Cert"
  default = "arn:aws:acm:us-east-1:504084586672:certificate/10d15e32-741f-4eb7-9461-8947cf8a58a5"
}
