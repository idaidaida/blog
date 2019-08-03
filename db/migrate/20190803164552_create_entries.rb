class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :contents
      t.references :createby,foreign_key: { to_table: :accounts }
      t.timestamps
    end
  end
end
