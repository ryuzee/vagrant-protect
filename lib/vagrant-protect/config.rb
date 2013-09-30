# -*- encoding: utf-8 -*-
# vim: set fileencoding=utf-8

require 'vagrant'
  
module VagrantProtect
  class Config < Vagrant.plugin(2, :config)
    attr_accessor :enabled

    def initialize
      @enabled = false
    end

  end
end
