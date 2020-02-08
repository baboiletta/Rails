class AddUseIdToPageInfo < ActiveRecord::Migration[6.0]
  def change
    add_column :page_infos, :user_id, :integer

  end
end
