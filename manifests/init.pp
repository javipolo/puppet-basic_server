class basic_server {
    # Management tools
    package { vim: ensure => installed }
    package { screen: ensure => installed }
    package { less: ensure => installed }

    # System tools
    package { lvm2: ensure => installed }
    package { xfsprogs: ensure => installed }
}
