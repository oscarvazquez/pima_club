OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '583868017426-n2hqg318chhl8u03e6e1ad2dhopt9vfi.apps.googleusercontent.com', '6_YD9ygwiqRqq2UoODPRQw2q', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1487615828210258', '5ea0b9db929b2b080e56248a355b5c15',
  :info_fields => 'name,email'
end