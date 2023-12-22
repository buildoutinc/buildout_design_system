module BuildoutDesignSystem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path(__dir__);

      def merge_package_json
        destination = 'package.json'
        source = File.expand_path(find_in_source_paths('package.json'))

        if File.exist?(destination)
          destination_data = JSON.parse(File.read(destination))
          source_data = JSON.parse(File.read(source))

          destination_data['dependencies'] = (destination_data['dependencies'] || {}).merge(source_data['dependencies'] || {})
          destination_data['devDependencies'] = (destination_data['devDependencies'] || {}).merge(source_data['devDependencies'] || {})
          destination_data['scripts'] = (destination_data['scripts'] || {}).merge(source_data['scripts'] || {})

          File.open(destination, 'w') do |f|
            f.write(JSON.pretty_generate(destination_data))
          end
        else
          say 'package.json not found, skipping merge and adding new package.json', :yellow
          copy_file 'package.json', destination
        end
      end

      def run_yarn_install
        run 'yarn install'
      end

      def append_to_procfile
        if File.exist?('Procfile.dev')
          append_to_file 'Procfile.dev', 'css: yarn watch:css'
        else
          say 'Procfile.dev not found, skipping yarn watch:css', :yellow
        end
        if File.exist?('Procfile')
          append_to_file 'Procfile', 'css: yarn build:css'
        else
          say 'Procfile not found, skipping yarn build:css', :yellow
        end
      end

      def invoke_all
        merge_package_json
        run_yarn_install
        append_to_procfile
      end
    end
  end
end