class basic_server {
    # Management tools
    package { vim: ensure => installed }
    package { screen: ensure => installed }
    package { less: ensure => installed }

    # System tools
    package { lvm2: ensure => installed }
    package { xfsprogs: ensure => installed }

    # Git everywhere
    include git

    # javipolo's vimrc
    git::repo{'javipolo-vim':
      path   => '/root/.vim',
      source => 'https://github.com/javipolo/vim.git',
    }

    # Link to .vimrc
    file { '/root/.vimrc':
      # update => true,
      ensure => link,
      target => '/root/.vim/vimrc',
    }

}
