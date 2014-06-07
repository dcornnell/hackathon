class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :email
	validates_uniqueness_of :email


	def get_photos
		@graph = Koala::Facebook::API.new(self.facebook)
		photos = @graph.get_object("me/photos")
		photos.each do |p|
			entry = Photo.new
			 entry.url = p["source"]
			 entry.time = p["created_time"]
			 entry.caption = p["name"]
			 entry.location = p["locaiton"]
			 entry.save
		end
	end



end

