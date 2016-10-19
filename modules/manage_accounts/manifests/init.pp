# Class: manage_accounts
#
# This module manages local and virtual accounts
#
class manage_accounts (
  $users         = hiera_array('user'),
  $groups        = hiera_array('group'),
  )
  {
  validate_hash($users)
  validate_hash($groups)

  class { 'manage_accounts::groups':
    groups => $groups,
  }

  class { 'manage_accounts::users':
    users   => $users,
    require => Class['manage_accounts::groups']
  }
}

