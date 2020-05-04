class CreateBlogPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :subtitle
      t.integer :state, default: 0
      t.text :content
      t.datetime :published_at

      t.timestamps
    end
  end
end

