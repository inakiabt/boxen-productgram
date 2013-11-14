class people::inakiabt {
    $my_dotfiles ="/Users/${::luser}/src/dotfiles"
    puts $my_dotfiles

    include chrome
    include iterm2::stable
    include skype
    include virtualbox
    include sparrow
    include dropbox
    include alfred
    include better_touch_tools
    include vlc
    include utorrent
    include hipchat
    include cyberduck
    include sublime_text_2
    include steam
    include transmission
    include jumpcut
    include btsync
    include googledrive
    include sequel_pro
    include magican
    include vagrant


    # dotfiles
    $my_dotfiles ="/Users/${::luser}/src/dotfiles"
    repository { $my_dotfiles:
       source   => 'git@github.com:inakiabt/dotfiles.git',
    }

    exec {"Install dotfiles":
        command => 'source ./bootstrap.sh --force',
        cwd => $my_dotfiles,
        require => Repository[$my_dotfiles],
    }

    # homebrew dupes
    include homebrew

    homebrew::tap { 'homebrew/dupes':
        before => [
            Package['grep'],
            Package['make'],
        ],
    }

    homebrew::tap { 'josegonzalez/php':
        before => [
            Package['php-build'],
            Package['phpenv'],
        ],
    }

    package {
    [
        'grep',
        'libevent',
        'make',
        'par',
    ]:
    ensure => 'latest',
  }

}
