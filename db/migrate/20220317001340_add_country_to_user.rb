class AddCountryToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :country, foreign_key: { to_table: :countries, primary_key: :code }, type: :string
  end
end
