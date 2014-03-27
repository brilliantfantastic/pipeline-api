class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.integer :week
      t.integer :hours_estimate

      t.timestamps
    end
  end
end
