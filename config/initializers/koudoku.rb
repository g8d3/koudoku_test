Koudoku.setup do |config|
  config.subscriptions_owned_by = :user
  config.stripe_publishable_key = ENV['STRIPE_PUBLISHABLE_KEY']
  config.stripe_secret_key = ENV['STRIPE_SECRET_KEY']

  # add webhooks
  # config.subscribe 'charge.failed', YourChargeFailed
end