class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :text
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
