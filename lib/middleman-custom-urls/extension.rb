module Middleman
  module CustomUrls
    class CustomUrlsExtension < Extension
      def manipulate_resource_list(resources)
        resources.each do |resource|
          next unless resource.raw_data[:custom_url].present?

          orig_path = resource.source_file.gsub(app.source_dir + '/', '')
          extname = File.extname(resource.source_file)
          while extname != ''
            extname = File.extname(orig_path)
            orig_path = orig_path.chomp(extname)
          end
          puts orig_path
          new_path = resource.raw_data[:custom_url]
          resource.destination_path = resource.destination_path.gsub(orig_path, new_path)
        end
      end
    end
  end
end
