require 'spec_helper_system'

describe 'basic tests' do
  it 'class should work without errors' do
    pp = <<-EOS
      class { 'updatemotd': }
    EOS

    puppet_apply(pp) do |r|
      r.exit_code.should == 0
    end
  end
end
