# spec/classes/init_spec.rb
require 'spec_helper'

describe "apache" do
  it { should contain_package('httpd') }

  it do should contain_service('httpd').with(
    'ensure' => 'running',
  ) end

  it { should contain_file('/var/www/html/index.html') }
end
