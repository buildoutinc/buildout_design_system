# frozen_string_literal: true

require_relative "lib/buildout_design_system/version"

Gem::Specification.new do |spec|
  spec.name = "buildout_design_system"
  spec.version = BuildoutDesignSystem::VERSION
  spec.authors = ["Robert Fryman"]
  spec.email = ["robert.fryman@buildout.com"]
  spec.summary = "A design system for Buildout"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "view_component", "~> 3.6.0"
  spec.add_dependency "bootstrap", "~> 5.3.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
