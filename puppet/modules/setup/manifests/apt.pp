# Set up APT
class setup::apt {

    exec { "apt-get update": }

    exec { "apt-get install python-software-properties":
        command => "apt-get -q -y --force-yes install python-software-properties python g++ make software-properties-common",
        require => Exec['apt-get update'],
    }

    exec { "add-apt-repository -y ppa:git-core/ppa":
        require => Exec['apt-get install python-software-properties'],
    }

}