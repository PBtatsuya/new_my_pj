class CreatePerformers < ActiveRecord::Migration[5.2]
  def change
    create_table :performers do |t|
      t.string :leader_name
      t.string :group_name
      t.text :description
      t.string :email
      t.boolean :piano

      t.timestamps
    end
  end
end
