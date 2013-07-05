# Set up Virtual Box
class setup::vbox {
    exec { "Install VBox Guest Addons":
        command => "sudo /etc/init.d/vboxadd setup",
        unless  => 'find /etc -name "*vbox*" | grep -c vboxadd',
    }
}