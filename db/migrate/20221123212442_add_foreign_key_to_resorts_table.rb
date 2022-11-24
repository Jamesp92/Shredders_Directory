class AddForeignKeyToResortsTable < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :resorts, :states
  end
end
