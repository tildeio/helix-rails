# This should really be HelixRuntime, but we want nicer naming
module Helix
  class InstallGenerator < Rails::Generators::Base
    desc "install Helix"
    def configure_application
      application("config.helix.outdated_error = :page_load", env: :development)
    end
  end
end
