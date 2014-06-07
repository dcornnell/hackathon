class TweetCreate < ActiveRecord::Migration
  def change
  	create_table :tweets do |t|
	  	t.string :caption
	  	t.string :photo
	  	t.integer :user_id
	  	t.string :type
	  end
  end
end
