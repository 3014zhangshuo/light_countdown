Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '9d9201bc9615d7434253', '1e559ff4ca4d560244928ec70dbd15f4e16a96fa', scope: "user:email,user:follow"
end
