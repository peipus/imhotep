class CreateWins < ActiveRecord::Migration
  def self.up
    create_table :wins do |t|
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :wins
  end
end
