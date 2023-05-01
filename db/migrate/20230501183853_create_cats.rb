class CreateCats < ActiveRecord::Migration[7.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.text :hobbies
      t.text :image

      t.timestamps
    end
  end
end
