class AddContentToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :content, :text
  end
end
