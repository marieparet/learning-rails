class TableComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments
    add_column :comments, :author, :string
    add_column :comments, :content, :string
  end
end
