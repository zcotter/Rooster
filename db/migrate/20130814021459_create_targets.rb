class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :host
      t.string :path
      t.integer :interval

      t.timestamps
    end
  end
end
