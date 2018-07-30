class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :subscriber_id
      t.integer :subscribe_to

      t.timestamps
    end
  end
end
