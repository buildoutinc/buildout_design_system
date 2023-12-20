module BuildoutDesignSystem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../..', __FILE__);

      def copy_package_json
        copy_file 'package.json', 'package.json'
      end

      def run_yarn_install
        run 'yarn install'
      end

      def append_to_procfile
        if File.exist?('Procfile.dev')
          append_to_file 'Procfile.dev', 'yarn watch:css'
        else
          say 'Procfile.dev not found, skipping yarn watch:css', :yellow
        end
        if File.exist('Procfile')
          append_to_file 'Procfile', 'yarn build:css'
        else
          say 'Procfile not found, skipping yarn build:css', :yellow
        end
      end
    end
  end
end