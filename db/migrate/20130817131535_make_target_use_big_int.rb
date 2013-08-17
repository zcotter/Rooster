class MakeTargetUseBigInt < ActiveRecord::Migration
  def up
     change_column :targets, :interval, :bigint
  end

  def down
    change_column :targets, :interval, :bigint
  end
end
