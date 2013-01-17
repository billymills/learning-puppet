ssh_authorized_key {'root':
  ensure => present,
  user   => root,
  key    => "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAIBmzjcvZYOU4FM4T/VxapPRCUmIkTOCbn8ukk1HSnUli7J49fiUT/Fjtnz82UTJj3LsjUAvCZKnzUcCbsLns6SFB5iuXJ0MFpdr83FzOUZ3Vd/PEarc9PBpdICNR+e6a+VDRRIRLO8hyVrOtgh8CV5ghwi36V70xMYNAwtg0lU/Iw==",
  type   => ssh-rsa,
}


