require 'yui/rails/version'

module YUI
  module Rails
    class FrameworkNotFound < StandardError; end

    # Inspired by Kaminari
    # and bootstrap-sass
    def self.load!
      if asset_pipeline?
        require 'yui-rails-asset'
        register_rails_engine
      else
        raise YUI::Rails::FrameworkNotFound, "yui-rails-asset requires Rails > 3.1"
      end
    end

    private
    def self.asset_pipeline?
      defined?(::Sprockets)
    end

    def self.register_rails_engine
      require 'yui/rails/engine'
    end
  end
end

YUI::Rails.load!