class CreateDvers < ActiveRecord::Migration
  def self.up
    create_table :dvers do |t|
      t.string :image

      t.timestamps
    end
  end

  def self.down
    drop_table :dvers
  end
end
