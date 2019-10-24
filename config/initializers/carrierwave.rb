require 'carrierwave/orm/activerecord'
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'

  # Configuration for Amazon S3 should be made available through an Environment variable
  # For local installations, export the env variable through the shell OR
  # if using Passenger, set an Apache environment variable
  # 
  # In Heroku, follow http://devcenter.heroku.com/articles/config-vars
  # 
  # # $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ S3_BUCKET_NAME=s3_bucket/folder


  # Use local storage if in development or test
  # if Rails.env.development? || Rails.env.test?
  #   CarrierWave.configure do |config|
  #     config.storage = :file
  #   end
  # end

  # # Use AWS storage if in production
  # if Rails.env.production?
  #   CarrierWave.configure do |config|
  #     config.storage = :fog
  #   end
  # end


  config.fog_credentials = {
    :provider               => 'AWS',                                       # required
    :aws_access_key_id      => ENV['S3_KEY'],#'AKIAU7OPYUWFE2JP4GOJ', #ENV['S3_KEY'], 
    :aws_secret_access_key  => ENV['S3_SECRET'],    #'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', #ENV['S3_SECRET'],             
    :region                 => ENV['S3_REGION'], #'us-east-1', #ENV['S3_REGION']               
  }
  config.fog_directory =  'pokememe-users'


  # config.fog_host       = 'https://assets.example.com'          # optional, defaults to nil
  config.fog_public     = true                              # optional, defaults to true
  config.fog_attributes = {}  # optional, defaults to {}
end