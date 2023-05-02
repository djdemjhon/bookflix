class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :published_date
      t.string :genre
      t.string :publisher
      t.string :isbn
      t.text :description
      t.text :cover_image_url

      t.timestamps
    end
  end
end
