class AddForeignKeytToStatesTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :states, :country
  end
end
