module Middleman
  module CustomUrls
    class CustomUrlsExtension < Extension
      def manipulate_resource_list(resources)
        resources.each do |resource|
          next unless resource.raw_data[:custom_url].present?

          orig_path = resource.path.chomp(File.extname(resource.path))
          new_path = resource.raw_data[:custom_url]
          resource.destination_path = resource.destination_path.gsub(orig_path, new_path)
        end
      end
    end
  end
end
