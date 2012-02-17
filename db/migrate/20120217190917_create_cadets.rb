class CreateCadets < ActiveRecord::Migration
  def change
    create_table :cadets do |t|
      t.string :first
      t.string :last
      t.integer :rack
      t.integer :roomnum
      t.string :company

      t.timestamps
    end
  end
end
