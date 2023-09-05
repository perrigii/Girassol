class AddPictureUrlToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :picture_url, :string
  end
end
