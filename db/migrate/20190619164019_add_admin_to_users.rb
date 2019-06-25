class AddAdminToUsers < ActiveRecord::Migration[5.2]
    def change
        add_column :users, :activation_digest, :string
        add_column :users, :admin, :boolean, default: false
        add_column :users, :activated_at, :datatime
    end
end
