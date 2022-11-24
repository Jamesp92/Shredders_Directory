class CreateResortTable < ActiveRecord::Migration[7.0]
  def change
    create_table :resorts do |t|
      t.column :resort_name , :string
      t.column :number_of_lifts , :integer
      t.column :ticket_cost , :integer
      t.column :state_id , :integer

      t.timestamps
    end
  end
end
