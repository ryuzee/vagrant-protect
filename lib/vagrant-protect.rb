# -*- encoding: utf-8 -*-
# vim: set fileencoding=utf-8

require "vagrant"
require "vagrant-protect/command"

module VagrantProtect
  class Plugin < Vagrant.plugin("2")
    name "protect"
    description <<-DESC
    Protect vagrant instance from destroying
    DESC

    config 'protect' do
      require File.expand_path("../vagrant-protect/config", __FILE__)
      Config
    end

    action_hook(self::ALL_ACTIONS) do |hook|
      hook.before(VagrantPlugins::ProviderVirtualBox::Action::Destroy, VagrantProtect::Command)
    end

  end
end
