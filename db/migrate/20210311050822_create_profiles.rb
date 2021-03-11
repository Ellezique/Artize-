class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.integer :postcode
      t.string :country
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
