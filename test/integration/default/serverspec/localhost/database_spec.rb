require 'spec_helper'

# Maria is a bastard and cloaks itself in a service called mysql
describe service('mysql') do
  it { should be_running }
end

describe command('mysql -h localhost -u root -piloverandompasswords -e "show databases"') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /Database/ }
end

#describe command('mysql -h localhost -u certificate -pthisisafakepassword certificate -e 'show tables'') do
#  it { should return_exit_status 0 }
#end
