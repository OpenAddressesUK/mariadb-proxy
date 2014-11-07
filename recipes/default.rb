include_recipe 'build-essential'

include_recipe 'mariadb::server'
include_recipe 'mariadb::client' # This is manually added here because otherwise it gets installed too late on systems that include it elsewhere

cnxn_info = {
  :host     => '127.0.0.1',
  :username => 'root',
  :password => 'ilikerandompasswords'
}

#mysql_database node['mariadb-proxy']['database'] do
#  connection cnxn_info
#  action :create
#end

#mysql_database_user node['rackspace-mysql-proxy']['user'] do
#  connection    cnxn_info
#  password      node['rackspace-mysql-proxy']['password']
#  database_name node['rackspace-mysql-proxy']['database']
#  host          '%'
#  privileges    [:all]
#  action        :grant
#end
