node default {
}
node 'maste.puppet.vm' {
  include role::master_server
}
