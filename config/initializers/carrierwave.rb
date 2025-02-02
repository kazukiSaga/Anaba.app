# CarrierWave.configure do |config|
#   if Rails.env.production?
#     config.asset_host = 'anaba-front.vercel.app'
#   elsif Rails.env.development?
#     config.asset_host = 'http://localhost:3000'
#   end
# end

require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory  = 'anaba-bucket'
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     Rails.application.credentials.dig(:aws, :access_key_id),
      aws_secret_access_key: Rails.application.credentials.dig(:aws, :secret_access_key),
      region:                Rails.application.credentials.dig(:aws, :region),
      path_style: true
    }
    config.fog_directory = Rails.application.credentials.dig(:aws, :bucket)
  elsif Rails.env.development?
    config.asset_host = 'http://localhost:3000'
    config.storage = :file
  end
end
