class AddUserToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :user_id, :integer
    remove_column :reviews, :author, :string
  end
end
