# Ensure certain packages are installed
class setup::packages {
    package { [
            "autoconf",
            "bison",
            "build-essential",
            "curl",
            "git-core",
            "libcurl3-openssl-dev",
            "libxml2-dev",
            "re2c",
            "vim",
        ]:
        ensure => "installed",
    }
}