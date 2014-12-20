# Install the correct version of bison
class setup::bison {
    
    Exec {
        provider => 'shell',
    }

    exec { "wget -P /tmp http://ftp.gnu.org/gnu/bison/bison-2.4.tar.gz": } ->

    exec { "tar -xzf /tmp/bison-2.4.tar.gz -C /tmp": } ->

    exec { "configure bison":
        command => 'cd /tmp/bison-2.4 && ./configure',
    } ->

    exec { "make and install bison":
        command => 'cd /tmp/bison-2.4 && make && make install',
    }

}