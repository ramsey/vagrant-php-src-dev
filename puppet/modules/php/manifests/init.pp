# Sets up the PHP source
class php {

    # Dependency declarations
    File['vagrant-src'] -> File['vagrant-src-config'] -> Exec['Clone the php-src repository']
    Exec['Clone the php-src repository'] -> Exec['Rename the origin remote to upstream'] -> Exec['Check out the PHP 5.5 branch']

    # Defaults for file declarations in this class.
    File {
        owner  => "vagrant",
        group  => "vagrant",
        mode   => "0775",
    }

    # Defaults for exec declarations in this class.
    Exec {
        user => "vagrant",
    }

    file { "vagrant-src":
        path      => "/home/vagrant/src",
        ensure => "directory",
    }

    file { "vagrant-src-config":
        path    => "/home/vagrant/src/config.nice-5.5",
        ensure  => "present",
        replace => "no",
        content => template("php/config.nice-5.5"),
    }

    exec { "Clone the php-src repository":
        command => "git clone https://github.com/php/php-src.git",
        cwd     => "/home/vagrant/src",
    }

    exec { "Rename the origin remote to upstream":
        command => "git remote rename origin upstream",
        cwd     => "/home/vagrant/src/php-src",
    }

    exec { "Check out the PHP 5.5 branch":
        command => "git checkout -b PHP-5.5 upstream/PHP-5.5",
        cwd     => "/home/vagrant/src/php-src",
    }

}
