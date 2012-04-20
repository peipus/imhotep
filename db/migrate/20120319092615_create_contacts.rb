class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :title
      t.string :name
      t.string :firmaname
      t.string :adress
      t.string :phone
      t.string :fax
      t.string :email
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
