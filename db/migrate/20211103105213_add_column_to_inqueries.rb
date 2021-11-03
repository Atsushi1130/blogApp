class AddColumnToInqueries < ActiveRecord::Migration[6.1]
  def change
    add_column :inqueries, :email, :text
  end
end
