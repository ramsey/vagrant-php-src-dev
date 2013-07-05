# Set up APT
class setup {
    class {'apt':}->
    class {'packages':}->
    class {'vbox':}->
    class {'help':}
}