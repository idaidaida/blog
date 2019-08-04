class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :contents
      t.references :commenter,foreign_key: { to_table: :accounts }
      t.references :entry
      t.timestamps
    end
  end
end
