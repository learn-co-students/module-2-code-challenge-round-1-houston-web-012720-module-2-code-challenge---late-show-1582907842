class AddNumberToAppearance < ActiveRecord::Migration[5.1]
  def change
    add_column :appearances, :number, :integer
  end
end
