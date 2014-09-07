class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.string :name
      t.string :size
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
