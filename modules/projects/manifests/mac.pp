class projects::mac {
    include iterm2::stable
    include vmware_fusion
    include vagrant
    include skype
    include autojump
    include cyberduck
    include magican
    include python
    #include sublime_text_2
    #include transmission

    vagrant::box { 'squeeze64/vmware_fusion':
        source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
    }
}
