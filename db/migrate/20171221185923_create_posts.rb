class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
       t.text :title
       t.string :short_description
       t.text :content, :limit => 966367641
       t.string :slug
       t.string :image
       t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
