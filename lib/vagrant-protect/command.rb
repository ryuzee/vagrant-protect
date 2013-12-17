# coding: utf-8
# vim: set fileencoding=utf-8

module VagrantProtect
  class Command 

    def initialize(app, env)
      @app = app
      @env = env
    end

    def call(env)
      if env[:machine].config.protect.enabled 
        env[:ui].info "You can not shutdown the instance because destroy command is disabled in the configuration"
        return
      end
      @app.call(env)
    end
  end
end
