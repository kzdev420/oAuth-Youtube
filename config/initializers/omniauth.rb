Rails.application.config.middleware.use OmniAuth::Builder do
    provider :google_oauth2, "1086303032998-ulunqs6sqft6jr7ha1etl4rqkrqlen77.apps.googleusercontent.com", "TmxszUr1cqnN46ebH1Lt0NsI", {scope: 'userinfo.email, userinfo.profile, http://gdata.youtube.com'}
    # provider :google_oauth2, ENV['1086303032998-ulunqs6sqft6jr7ha1etl4rqkrqlen77.apps.googleusercontent.com'], ENV['TmxszUr1cqnN46ebH1Lt0NsI']
end   