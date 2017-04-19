module HelixRuntime
  module Rails
    class CheckOutdated
      def initialize(app, project)
        @app = app
        @project = project
        @last_check = 0
      end

      def call(env)
        @project.ensure_built!
        @app.call(env)
      end
    end
  end
end
