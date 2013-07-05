# Sets up the PHP source
class php {
    file { "/home/vagrant/src":
        ensure => "directory",
        owner  => "vagrant",
        group  => "vagrant",
        mode   => "0775",
    }->
    file { "/home/vagrant/src/config.nice-5.5":
        ensure  => "present",
        replace => "no",
        owner   => "vagrant",
        group   => "vagrant",
        mode    => "0775",
        content => template("php/config.nice-5.5"),
    }->
    exec { "Clone the php-src repository":
        command => "git clone https://github.com/php/php-src.git",
        cwd     => "/home/vagrant/src",
        user    => "vagrant",
    }->
    exec { "Rename the origin remote to upstream":
        command => "git remote rename origin upstream",
        cwd     => "/home/vagrant/src/php-src",
        user    => "vagrant",
    }->
    exec { "Check out the PHP 5.5 branch":
        command => "git checkout -b PHP-5.5 upstream/PHP-5.5",
        cwd     => "/home/vagrant/src/php-src",
        user    => "vagrant",
    }
}