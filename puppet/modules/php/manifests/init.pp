# Sets up the PHP source
class php {

    # Dependency declarations
    File['vagrant-src'] -> File['vagrant-src-config-5.5'] -> Exec['Clone the php-src repository']
    File['vagrant-src'] -> File['vagrant-src-config-5.6']
    Exec['Clone the php-src repository'] -> Exec['Rename the origin remote to upstream'] -> Exec['Check out the PHP 5.5 branch'] -> Exec['Check out the PHP 5.6 branch']

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
        ensure => "directory",
        path   => "/home/vagrant/src",
    }

    file { "vagrant-src-config-5.5":
        ensure  => "present",
        path    => "/home/vagrant/src/config.nice-5.5",
        replace => "no",
        content => template("php/config.nice-5.5"),
    }

    file { "vagrant-src-config-5.6":
        ensure  => "present",
        path    => "/home/vagrant/src/config.nice-5.6",
        replace => "no",
        content => template("php/config.nice-5.6"),
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

    exec { "Check out the PHP 5.6 branch":
        command => "git checkout -b PHP-5.6 upstream/PHP-5.6",
        cwd     => "/home/vagrant/src/php-src",
    }

}
