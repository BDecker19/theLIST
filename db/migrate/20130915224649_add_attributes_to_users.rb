class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_complete, :boolean, default: false
  	add_column :users, :name, :string
  	add_column :users, :date_of_birth, :datetime
  	add_column :users, :bio, :text
  	add_column :users, :twitter_username, :string
  	add_column :users, :github_username, :string
  	add_column :users, :website, :string
  end
end
