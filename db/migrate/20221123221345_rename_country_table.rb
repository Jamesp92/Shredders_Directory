class RenameCountryTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :country, :countries
  end
end
