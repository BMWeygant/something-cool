class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :vip
      t.string :city
      t.string :state
      t.string :twitter
      t.string :instagram
      t.string :facebook
      t.string :snapchat

      t.timestamps
    end
  end
end
