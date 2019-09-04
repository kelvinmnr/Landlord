class CreateMaintanances < ActiveRecord::Migration[5.1]
  def change
    create_table :maintanances do |t|

      t.timestamps
    end
  end
end
