Exec {
    path => [
        "/usr/local/sbin",
        "/usr/local/bin",
        "/usr/sbin",
        "/usr/bin",
        "/sbin",
        "/bin",
        "/opt/vagrant_ruby/bin",
    ],
}

node default {
    class {'setup':}->
    class {'github':}->
    class {'php':}
}
