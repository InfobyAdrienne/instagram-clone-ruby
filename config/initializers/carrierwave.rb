CarrierWave.configure do |config| 
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
  }
  config.storage = :fog 
  config.permissions = 0666
  config.cache_dir = "#{Rails.root}/tmp/"
  config.fog_directory  = ENV['AWS_BUCKET']
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
end