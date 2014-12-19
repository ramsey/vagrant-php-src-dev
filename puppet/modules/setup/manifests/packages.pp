# Ensure certain packages are installed
class setup::packages {

    exec { 'Update Apt for Packages':
        command => 'apt-get update',
    }

    package { [
            "autoconf",
            "build-essential",
            "curl",
            "git",
            "git-core",
            "libcurl3-openssl-dev",
            "libxml2-dev",
            "re2c",
            "vim",
        ]:
        ensure => "installed",
        require => Exec['Update Apt for Packages'],
    }

}