class people::inakiabt {
    #include projects::all
    #include iterm2::stable

    #include vagrant

    #vagrant::box { 'squeeze64/vmware_fusion':
    #    source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
    #}

    include titanium
}
