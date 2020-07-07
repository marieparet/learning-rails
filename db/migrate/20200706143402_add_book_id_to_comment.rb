class AddBookIdToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :book_id, :integer
    add_index :comments, :book_id
  end
end
