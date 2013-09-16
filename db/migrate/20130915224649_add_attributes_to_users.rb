class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_complete, :boolean, default: false
  	add_column :users, :name, :string
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :bio, :text
  end
end
