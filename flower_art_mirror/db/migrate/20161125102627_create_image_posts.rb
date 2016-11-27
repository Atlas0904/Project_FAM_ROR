class CreateImagePosts < ActiveRecord::Migration
  def change
    create_table :image_posts do |t|
      t.string :title
      t.string :body
      t.attachment :image

      t.timestamps null: false
    end
  end
end
