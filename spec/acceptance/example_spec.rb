require 'spec_helper_acceptance'

describe "ignore" do

  example "ignore" do
    hosts.each do |host|
      on host, 'echo hello'
    end
  end

  example "access options hash" do
    install_pe
  end

  hosts.each do |node|
    describe service('ssh'), :node => node do
      it { should be_running }
      it { should be_enabled }
    end
  end

end
