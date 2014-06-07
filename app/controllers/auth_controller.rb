class AuthController < ApplicationController
	def twitter
		set_twitter_token
	end

	def facebook
		set_facebook_token

	end

def set_twitter_token
	hash = request.env['omniauth.auth']

	current_user.twitter = hash.credentials.token
	current_user.save!
end

def set_facebook_token
	hash = request.env['omniauth.auth']

	current_user.facebook = hash.credentials.token
	current_user.save!
end



end

