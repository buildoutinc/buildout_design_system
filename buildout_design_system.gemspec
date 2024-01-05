require_relative "lib/buildout_design_system/version"

Gem::Specification.new do |spec|
  spec.name        = "buildout_design_system"
  spec.version     = BuildoutDesignSystem::VERSION
  spec.authors     = ["tjacobs3"]
  spec.email       = ["tj@buildout.com"]
  spec.homepage    = "https://www.buildout.com"
  spec.summary     = "CSS and View Components for use at Buildout"
  spec.description = "CSS and View Components for use at Buildout"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/buildoutinc/buildout_design_system"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "view_component", "~> 3.5"
end
