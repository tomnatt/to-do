class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.string :description
      t.integer :urgency
      t.integer :importance

      t.timestamps
    end
  end
end
