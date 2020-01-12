class RemoveUniqueFromEmail < ActiveRecord::Migration[6.0]
  def change
    #remove uniqueness validation from email index
    remove_index :users, :email
    add_index :users, :email
  end
end
