class AddTitleToListe < ActiveRecord::Migration
  def self.up
    add_column :listes, :heading, :string
  end

  def self.down
    remove_column :listes, :heading
  end
end
