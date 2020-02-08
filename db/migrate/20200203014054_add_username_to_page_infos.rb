class AddUsernameToPageInfos < ActiveRecord::Migration[6.0]
  def change
    add_column :page_infos, :username, :string, :limit => 25
    add_column :page_infos, :full_name, :string, :limit => 25
    add_column :page_infos, :email, :string
    add_column :page_infos, :numb, :integer
    add_column :page_infos, :add, :string

    #By default SQL String limit 255 character 
    #Ex:- :limit => 40
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
