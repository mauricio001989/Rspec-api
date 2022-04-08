class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries, id: false do |t|
      t.string :code, primary_key: true
      t.string :name, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
