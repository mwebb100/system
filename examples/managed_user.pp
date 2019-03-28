# Linux requires a hash for the password. This one is 'Puppet8Labs!'
# Generate your own with the command `openssl passwd -1` if you'd like.


system::managed_user { ['mark','joey','charles']:
  password => '$1$mK2rhty7$J4ImSpxUWrOfivsipLosa.',
}
