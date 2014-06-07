class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :email
    	t.string :password_digest
    	t.string :twitter
    	t.string :instagram
    end
  end
end
