class CreatePageInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :page_infos do |t|

      t.timestamps
    end
  end
end
