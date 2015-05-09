class AddSelectedToFaces < ActiveRecord::Migration
  def change
    add_column :faces, :selected, :boolean
  end
end
