require 'middleman-custom-urls/version'
require 'middleman-custom-urls/extension'

Middleman::Extensions.register(:custom_urls, Middleman::CustomUrls::CustomUrlsExtension)
