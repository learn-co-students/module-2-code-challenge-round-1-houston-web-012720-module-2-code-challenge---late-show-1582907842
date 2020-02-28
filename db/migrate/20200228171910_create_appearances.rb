class CreateAppearances < ActiveRecord::Migration[5.1]
  def change
    create_table :appearances do |t|
      t.string :guest_id
      t.string :episode_id
      t.integer :rating

      t.timestamps
    end
  end
end
