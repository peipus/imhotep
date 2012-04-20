class CreateStesEs < ActiveRecord::Migration
  def self.up
    create_table :stes_es do |t|
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :stes_es
  end
end
