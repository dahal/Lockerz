class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.string :customer_name
      t.belongs_to :locker

      t.timestamps
    end
  end
end
