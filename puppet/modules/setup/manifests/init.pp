# Set up APT
class setup {

    # Dependency declarations
    Class['apt'] -> Class['packages'] -> Class['bison'] -> Class['vbox'] -> Class['help']

    class {'apt':}
    class {'packages':}
    class {'bison':}
    class {'vbox':}
    class {'help':}

}
