class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :pirce
      t.integer :num
      t.integer :catgory

      t.timestamps
    end
  end
end
