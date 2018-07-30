class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.integer :user_id
      t.attachment :avatar

      t.timestamps
    end
  end
end
