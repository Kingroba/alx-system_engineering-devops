# The Below code will Execute a command

exec {'killmenow' :
  command => '/usr/bin/pkill killmenow'
}
