class CreateUserAddresses < ActiveRecord::Migration
  def self.up
    create_table :user_addresses do |t|
      t.string :userid
      t.boolean :is_current
      t.string :addr_1
      t.string :addr_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :addr_id
      t.timestamps
    end
  end

  def self.down
    drop_table :user_addresses
  end
end
