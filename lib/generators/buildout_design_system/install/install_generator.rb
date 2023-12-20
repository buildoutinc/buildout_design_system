module BuildoutDesignSystem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../..', __FILE__);

      def merge_package_json
        destination = 'package.json'
        source = File.expand_path(find_in_source_paths('package.json'))

        if File.exist?(destination)
          destination_data = JSON.parse(File.read(destination))
          source_data = JSON.parse(File.read(source))

          destination_data['dependencies'] = (destination_data['dependencies'] || {}).merge(source_data['dependencies'] || {})
          destination_data['devDependencies'] = (destination_data['devDependencies'] || {}).merge(source_data['devDependencies'] || {})

          File.open(destination, 'w') do |f|
            f.write(JSON.pretty_generate(destination_data))
          end
        else
          say 'package.json not found, skipping merge', :yellow
        end
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