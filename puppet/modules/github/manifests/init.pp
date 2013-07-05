# Set up GitHub access and SSH key
class github {
    file { "/home/vagrant/.ssh/config":
        ensure  => "present",
        replace => "no",
        owner   => "vagrant",
        group   => "vagrant",
        mode    => "0644",
        content => template("github/ssh_config"),
    }
}