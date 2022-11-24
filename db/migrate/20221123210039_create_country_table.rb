class CreateCountryTable < ActiveRecord::Migration[7.0]
  def change
    create_table :country do |t|
      t.column :country_name, :string

      t.timestamps
    end
  end
end
