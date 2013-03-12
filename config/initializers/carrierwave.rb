CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAJA5MBTSA7BXDJR5A',                        # required
    :aws_secret_access_key  => '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',                        # required
  }
  config.fog_directory  = 'heyrenee'                     # required

end