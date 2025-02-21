class CreateBlogs < ActiveRecord::Migration[8.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :image_url
      t.string :slug
      t.integer :likes
      t.datetime :published_at

      t.timestamps
    end
  end
end
