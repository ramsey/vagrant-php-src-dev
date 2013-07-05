# Creates help files for use after logging in
class setup::help {
    file { "/home/vagrant/README-FIRST":
        ensure  => "present",
        replace => "no",
        owner   => "vagrant",
        group   => "vagrant",
        mode    => "0664",
        content => template("setup/README-FIRST"),
    }
    file { "/home/vagrant/setup_repo":
        ensure  => "present",
        replace => "no",
        owner   => "vagrant",
        group   => "vagrant",
        mode    => "0775",
        content => template("setup/setup_repo"),
    }
}