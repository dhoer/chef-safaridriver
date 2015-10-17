require 'spec_helper'

describe 'safaridriver_test::default' do
  context 'windows' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        file_cache_path: 'C:/chef/cache', platform: 'windows', version: '2008R2').converge(described_recipe)
    end

    it 'does not download driver' do
      expect(chef_run).to_not create_remote_file('/var/chef/cache/SafariDriver.safariextz').with(
        source: 'https://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz'
      )
    end

    it 'does not log into gui' do
      expect(chef_run).to_not run_macosx_gui_login('vagrant').with(
        password: 'vagrant'
      )
    end

    it 'does not install driver' do
      expect(chef_run).to_not install_safari_extension('SafariDriver Extension').with(
        safariextz: '/var/chef/cache/SafariDriver.safariextz'
      )
    end
  end

  context 'linux' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(
        file_cache_path: '/var/chef/cache', platform: 'centos', version: '7.0').converge(described_recipe)
    end

    it 'does not download driver' do
      expect(chef_run).to_not create_remote_file('/var/chef/cache/SafariDriver.safariextz').with(
        source: 'https://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz'
      )
    end

    it 'does not log into gui' do
      expect(chef_run).to_not run_macosx_gui_login('vagrant').with(
        password: 'vagrant'
      )
    end

    it 'does not install driver' do
      expect(chef_run).to_not install_safari_extension('SafariDriver Extension').with(
        safariextz: '/var/chef/cache/SafariDriver.safariextz'
      )
    end
  end

  context 'mac_os_x' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(file_cache_path: '/var/chef/cache', platform: 'mac_os_x', version: '10.10') do
        allow_any_instance_of(Chef::Recipe).to receive(:safari_version).and_return('8.0.4')
      end.converge(described_recipe)
    end

    it 'downloads driver' do
      expect(chef_run).to create_remote_file('/var/chef/cache/SafariDriver.safariextz').with(
        source: 'https://selenium-release.storage.googleapis.com/2.48/SafariDriver.safariextz'
      )
    end

    it 'logs into gui' do
      expect(chef_run).to run_macosx_gui_login('vagrant').with(
        password: 'vagrant'
      )
    end

    it 'install driver' do
      expect(chef_run).to install_safari_extension('SafariDriver Extension').with(
        safariextz: '/var/chef/cache/SafariDriver.safariextz'
      )
    end
  end
end
