class AddPostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title
      t.text    :content
      t.string  :pic_url
      t.integer :user_id
 
      t.timestamps
    end
  end
end