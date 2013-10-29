class AddProtocolToTarget < ActiveRecord::Migration
  def up
    add_column :targets, :protocol, :string, :default => 'http'
  end
  def down
    remove_column :targets, :protocol
  end
end
