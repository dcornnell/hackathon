Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, "hEXuyfTDhcpuaIfAX1h8D3JiO", "tgy0ghy4OiDMXUY3SXolqSNQEAblQwWoIkiME7ih2hmq7GlmUj"
	provider :facebook, "656588497723014", "dda652afe6a5917a924a48386d9b91c3", :scope => 'email, read_stream, user_photos', :display => 'popup'
end

