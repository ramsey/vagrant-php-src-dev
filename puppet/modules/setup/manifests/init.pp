# Set up APT
class setup {

    # Dependency declarations
    Class['apt'] -> Class['packages'] -> Class['vbox'] -> Class['help']

    class {'apt':}
    class {'packages':}
    class {'vbox':}
    class {'help':}

}
