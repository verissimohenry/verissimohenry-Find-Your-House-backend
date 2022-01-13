Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*", "https://friendly-yonath-3ed2b1.netlify.app/"
    resource "*", headers: :any, methods: [:get, :post, :patch, :put]
  end
end