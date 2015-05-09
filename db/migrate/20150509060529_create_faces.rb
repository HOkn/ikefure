class CreateFaces < ActiveRecord::Migration
  def change
    create_table :faces do |t|
      t.references :user, index: true, foreign_key: true
      t.references :raw, index: true, foreign_key: true
      t.string :filename

      t.timestamps null: false
    end
  end
end
