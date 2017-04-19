require 'helix_runtime/rails/check_outdated'

module HelixRuntime
  module Rails
    class Railtie < ::Rails::Railtie
      config.helix = ActiveSupport::OrderedOptions.new

      initializer "helix.build_check" do |app|
        project = HelixRuntime::ParentProject.new(app.root)

        # This will be added by the install generator, but people may forget to run it
        if ::Rails.env.development? && !config.helix.key?(:outdated_error)
          config.helix.outdated_error = :page_load
        end

        if config.helix.delete(:outdated_error) == :page_load
          config.app_middleware.insert_after ::ActionDispatch::Callbacks,
            HelixRuntime::Rails::CheckOutdated, project
        end
      end
    end
  end
end
