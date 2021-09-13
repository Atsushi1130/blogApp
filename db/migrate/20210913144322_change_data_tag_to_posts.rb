class ChangeDataTagToPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :tag, :text, array: true
  end
end
