class CreateInqueries < ActiveRecord::Migration[6.1]
  def change
    create_table :inqueries do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
