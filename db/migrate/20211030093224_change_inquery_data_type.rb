class ChangeInqueryDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :inqueries, :name, :text
    change_column :inqueries, :message, :text
  end
end
