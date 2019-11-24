class AddingEmailToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts,:email,:text
  end
end
