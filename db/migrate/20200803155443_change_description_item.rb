class ChangeDescriptionItem < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      change_table :items do |t|
        dir.up   { t.change :description, :text }
        dir.down { t.change :description, :string }
      end
    end
  end
end
