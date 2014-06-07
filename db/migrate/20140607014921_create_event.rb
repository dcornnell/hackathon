class CreateEvent < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.date :start_date
    	t.date :end_date
    	t.string :event_name
    	t.integer :user_id
    end
  end
end
