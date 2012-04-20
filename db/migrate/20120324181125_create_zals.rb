class CreateZals < ActiveRecord::Migration
  def self.up
    create_table :zals do |t|
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :zals
  end
end
