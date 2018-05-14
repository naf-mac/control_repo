class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDBd0Fu2gdaM+SxOD+BgdSo/R6Gz1rYkrJiTNZHGofxRliLU6ys4/WgANGJCsLfZUGZICexaZXlKVAKetdreEwvttSz/AxyoW5MkS1la1Uwy6+geUgbKCF8rE0qFrIwM2648wobwu1aVHh0X8Y0C8/VGt5vOWZk6MLvMUVpjL3/227+Uek9V7KCzKA9xMPJGw1ZB3p7vX3nVGe636EusHxxK/64q8uZlw7hTZrwVQoINsE8UZKlT+wmTWjSkd0VV1Ap+smGstJ4gdDDR7s0AosDyqygu4IuMi3koSxtTWcg2HVvCiYURSKuIlwyv2T9fzVX7uyIO3IqttEoygWLNJKB',
  }
}
    
