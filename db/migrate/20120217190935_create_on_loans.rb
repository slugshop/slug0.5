class CreateOnLoans < ActiveRecord::Migration
  def change
    create_table :on_loans do |t|
      t.integer :loanTo
      t.integer :itemID
      t.date :dateStart
      t.integer :loanLength
      t.boolean :isActive

      t.timestamps
    end
  end
end
