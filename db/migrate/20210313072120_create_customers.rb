class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
