class CreateWineEntries < ActiveRecord::Migration
  def self.up
    create_table :wine_entries do |t|
      t.string :name
      t.integer :year
      t.string :photo_link

      t.timestamps
    end
  end

  def self.down
    drop_table :wine_entries
  end
end
