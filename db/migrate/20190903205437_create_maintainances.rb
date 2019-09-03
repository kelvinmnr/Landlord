class CreateMaintainances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintainances do |t|
      t.string :name
      t.string :area
      t.string :problem

      t.timestamps
    end
  end
end
