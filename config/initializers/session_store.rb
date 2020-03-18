if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: 'gti-backend', domain: 'gti-frontend'
  else
    Rails.application.config.session_store :cookie_store, key: 'gti-backend' 
  end