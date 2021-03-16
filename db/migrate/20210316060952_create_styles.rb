class CreateStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :styles do |t|
      t.boolean :objective
      t.boolean :abstract
      t.boolean :subjective
      t.boolean :figurative
      t.boolean :geometric
      t.boolean :photorealism
      t.boolean :pop
      t.boolean :illustration
      t.boolean :still_life
      t.boolean :surrealism
      t.boolean :landscape
      t.boolean :portrait

      t.timestamps
    end
  end
end
