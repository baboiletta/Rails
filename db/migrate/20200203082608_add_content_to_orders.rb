class AddContentToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :content, :text

  end
end
