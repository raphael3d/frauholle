class CreateListes < ActiveRecord::Migration
  def self.up
    create_table :listes do |t|
      t.string :title
      t.text :description
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :listes
  end
end
