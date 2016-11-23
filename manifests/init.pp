#My own personal motd for my puppet masters
#/etc/motd

class motd {
$username = $::id
  file { '/etc/motd':
  owner => 'root',
  group => 'root',
  mode  => '0644',
  content => template('motd/motd.master.erb'),
 }
}
