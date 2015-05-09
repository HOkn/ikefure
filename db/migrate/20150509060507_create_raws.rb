class CreateRaws < ActiveRecord::Migration
  def change
    create_table :raws do |t|
      t.references :user, index: true, foreign_key: true
      t.string :filename

      t.timestamps null: false
    end
  end
end
