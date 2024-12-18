CarrierWave.configure do |config|
  if Rails.env.production?
    config.asset_host = 'anaba-front.vercel.app'
  elsif Rails.env.development?
    config.asset_host = 'http://localhost:3000'
  end
end
