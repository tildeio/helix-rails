require 'helix_runtime/cli'

# This should really be HelixRuntime, but we want nicer naming
module Helix
  class CrateGenerator < Rails::Generators::Base
    desc "add Helix crate"
    argument :name, :type => :string

    def add_crate
      cli = HelixRuntime::CLI::Base.new
      cli.invoke(:crate, [name])
    end
  end
end
