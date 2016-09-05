#uses figaro gem to help hide important keys, preventing aws from being hacked
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["aws_access_key_id"],           # required
    aws_secret_access_key: ENV["aws_secret_access_key"],        # required
    region:                'us-west-1'                 # required, defaults to 'us-east-1'
  }
  config.fog_directory  = ENV["fog_directory"]                 # required

end





