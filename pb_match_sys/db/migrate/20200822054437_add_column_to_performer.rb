class AddColumnToPerformer < ActiveRecord::Migration[5.2]
  def change
    add_column :performers ,:image_name ,:string 
    add_column :performers ,:password_digest ,:string
  end
end
