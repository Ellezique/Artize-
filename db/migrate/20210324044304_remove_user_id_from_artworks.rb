class RemoveUserIdFromArtworks < ActiveRecord::Migration[6.1]
  def change
    remove_column :artworks, :user_id, :bigint
  end
end
