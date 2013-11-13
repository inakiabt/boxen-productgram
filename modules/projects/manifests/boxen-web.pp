class projects::boxen-web {
  include postgresql
  postgresql::db { 'boxen_development': }
  postgresql::db { 'boxen_test': }

  boxen::project { 'boxen-web':
    nginx => true,
    postgresql => true,
    ruby  => '1.9.3',
    source => 'boxen/boxen-web'
  }
}