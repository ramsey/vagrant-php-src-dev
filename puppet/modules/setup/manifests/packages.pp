# Ensure certain packages are installed
class setup::packages {

    exec { 'Update Apt for Packages':
        command => 'apt-get update',
    }

    package { [
            "autoconf",
            "automake",
            "build-essential",
            "curl",
            "flex",
            "freetds-dev",
            "git",
            "git-core",
            "libXpm-dev",
            "libaspell-dev",
            "libbz2-dev",
            "libc-client-dev",
            "libcurl3-dev",
            "libcurl3-openssl-dev",
            "libdb5.1-dev",
            "libfreetype6-dev",
            "libgmp3-dev",
            "libicu-dev",
            "libjpeg-dev",
            "libldap2-dev",
            "libmcrypt-dev",
            "libmhash-dev",
            "libmysqlclient15-dev",
            "libpcre3-dev",
            "libpng-dev",
            "libpspell-dev",
            "libreadline6-dev",
            "librecode-dev",
            "libsnmp-dev",
            "libsqlite-dev",
            "libssl-dev",
            "libt1-dev",
            "libtidy-dev",
            "libtool",
            "libxml2",
            "libxml2-dev",
            "libxslt-dev",
            "libz-dev",
            "make",
            "ncurses-dev",
            "re2c",
            "unixODBC-dev",
            "vim",
        ]:
        ensure => "installed",
        require => Exec['Update Apt for Packages'],
    }

}