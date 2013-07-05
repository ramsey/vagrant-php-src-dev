# Set up APT
class setup::apt {
    exec { "Update Apt":
        command => "apt-get update",
    }
}