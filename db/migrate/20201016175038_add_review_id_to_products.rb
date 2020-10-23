class AddReviewIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :review_id, :integer
  end
end
