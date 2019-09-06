class AddComments < ActiveRecord::Migration[5.0]
  def change
    change_table :likes do |t|
      t.belongs_to(:comment, foreign_key: true)
    end
  end
end
