require_relative "lib/styleguide/version"

Gem::Specification.new do |spec|
  spec.name        = "styleguide"
  spec.version     = Styleguide::VERSION
  spec.authors     = ["tjacobs3"]
  spec.email       = ["tj@buildout.com"]
  spec.homepage    = "https://github.com/buildoutinc"
  spec.summary     = "Summary of Styleguide."
  spec.description = "Description of Styleguide."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"
  spec.add_dependency "view_component", "~> 3.5"
end
