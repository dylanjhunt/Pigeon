class CreateSquawks < ActiveRecord::Migration
  def change
    create_table :squawks do |t|

      t.timestamps null: false
    end
  end
end
