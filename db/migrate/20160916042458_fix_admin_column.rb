class FixAdminColumn < ActiveRecord::Migration
  def self.up
    rename_column :Users, :admim, :admin
  end
end
