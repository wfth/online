Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new(ENV['WFTH_PERMISSIONS_AWS_ACCESS_KEY'], ENV['WFTH_PERMISSIONS_AWS_ACCESS_SECRET'])
})
