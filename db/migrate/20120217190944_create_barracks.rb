class CreateBarracks < ActiveRecord::Migration
  def change
    create_table :barracks do |t|
      t.string :rackName

      t.timestamps
    end
  end
end
