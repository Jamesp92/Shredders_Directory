class CreateStatesTable < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.column :state_name, :string
      t.column :country_id, :integer
      t.timestamps
    end
  end
end
