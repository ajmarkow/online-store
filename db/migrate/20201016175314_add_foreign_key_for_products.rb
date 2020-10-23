class AddForeignKeyForProducts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :products, :reviews
  end
end
