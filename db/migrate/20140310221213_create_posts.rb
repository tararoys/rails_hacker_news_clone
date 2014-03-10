class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :source
      t.integer :author

      t.timestamps
    end
  end
end
