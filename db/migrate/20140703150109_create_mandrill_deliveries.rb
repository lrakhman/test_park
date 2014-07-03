class CreateMandrillDeliveries < ActiveRecord::Migration
  def change
    create_table :mandrill_deliveries do |t|

      t.timestamps
    end
  end
end
