class AddIdToSquawks < ActiveRecord::Migration
  def change
    add_column :squawks, :user_id, :integer
  end
end
