class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.string :name_whom_add_comment
      t.belongs_to(:user, foreign_key: true)
      t.belongs_to(:tweet, foreign_key: true)

      t.timestamps
    end
  end
end
