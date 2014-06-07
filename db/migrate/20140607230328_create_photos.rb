class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string "url"
    	t.date "time"
    	t.string "location"
    	t.string "caption"
    	t.string "type"
    	

    end
  end
end
