class CreateUserLifestages < ActiveRecord::Migration[5.2]
  def change
    create_table :user_lifestages do |t|
      t.integer :user_id
      t.integer :lifestage_id

      t.timestamps
    end
  end
end
