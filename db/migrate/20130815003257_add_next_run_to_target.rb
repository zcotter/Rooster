class AddNextRunToTarget < ActiveRecord::Migration
  def up
    add_column :targets, :next_run, :integer
  end
  def down
    remove_column :targets, :next_run
  end
end
