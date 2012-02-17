class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :itemName
      t.integer :itemType
      t.integer :itemOwner
      t.boolean :isAvailible

      t.timestamps
    end
  end
end
