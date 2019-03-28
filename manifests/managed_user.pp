# A description of what this defined type does
#
# @summary A short summary of the purpose of this defined type.
#
# @example
#   system::managed_user { 'namevar': }
define system::managed_user (
    $password = '!!',
) {

user { $title:
ensure     => present,
password   => $password,
managehome => true,
}
file { "/home/${title}/.bashrc":
ensure => file,
owner  => $title,
group  => $title,
mode   => '0644',
source => 'puppet:///modules/system/bashrc',
}

#If $::kernel is 'Linux' then use a notify resource to say something

}

