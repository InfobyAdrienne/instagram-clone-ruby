# CarrierWave.configure do |config| 
#   config.fog_credentials = {
#     provider: 'AWS',
#     aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
#     aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
#     region: ENV['AWS_REGION']
#   }
#   config.storage = :aws 
#   config.permissions = 0666
#   config.cache_dir = "#{Rails.root}/tmp/"
#   config.fog_directory  = ENV['AWS_BUCKET']
#   config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
# end

CarrierWave.configure do |config|
  config.storage    = :aws
  config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
  config.aws_acl    = 'public-read'
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
  config.aws_credentials = {
    access_key_id:     ENV.fetch('AWS_ACCESS_KEY_ID'),
    secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    region:            ENV.fetch('AWS_REGION')
  }
end