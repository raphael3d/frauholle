class AddWdToList < ActiveRecord::Migration
  def self.up
    add_column :listes, :dienstag, :string
    add_column :listes, :dienstag2, :string
    add_column :listes, :mittwoch, :string
    add_column :listes, :mittwoch2, :string
    add_column :listes, :donnerstag, :string
    add_column :listes, :donnerstag2, :string
    add_column :listes, :freitag, :string
    add_column :listes, :freitag2, :string
  end

  def self.down
    remove_column :listes, :freitag2
    remove_column :listes, :freitag
    remove_column :listes, :donnerstag2
    remove_column :listes, :donnerstag
    remove_column :listes, :mittwoch2
    remove_column :listes, :mittwoch
    remove_column :listes, :dienstag2
    remove_column :listes, :dienstag
  end
end
