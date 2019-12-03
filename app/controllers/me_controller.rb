class MeController < ApplicationController
    before_action :authenticate
    def show
        # Yt.configure do |config|
        #     config.api_key = 'AIzaSyAO8dXpvZcaP2XSDFBD91H8yQ'
        # end
        Yt.configure do |config|
            config.client_id = '1086303032998-ulunqs6sqft6jr7ha1etl4rqkrqlen77.apps.googleusercontent.com'
            config.client_secret = 'TmxszUr1cqnN46ebH1Lt0NsI'
            config.api_key = 'AIzaSyCJhTtb6i0NNrqCHRDNKW0WeO2EfWKr41I'

            # config.api_key = "AIzaSyAshHkICxdRwVGlymaEPn60BuuoTNW5mLo"
            # config.client_id = "244615150400-05thnta81fhg631up71t8v7e167i8pta.apps.googleusercontent.com"
            # config.client_secret = "XW9LFZYGtLjruVh9kOpmCaRY"

            config.log_level = :debug
        end
        scope = %i(yt-analytics.readonly youtube)
        @account = Yt::Account.new access_token: current_user.token, scopes: scope
        @related_playlists = @account.related_playlists
    
    end
end
