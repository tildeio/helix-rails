require 'helix_runtime/parent_build_task'

HelixRuntime::ParentBuildTask.new

task "assets:precompile" => :build
