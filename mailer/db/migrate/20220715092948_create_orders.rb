class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :address
      t.bigint :phone
      t.string :message

      t.timestamps
    end
  end
end
