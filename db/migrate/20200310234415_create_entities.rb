class CreateEntities < ActiveRecord::Migration[6.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :industry
      t.text :description
      t.text :services
      t.string :website
      t.string :phone
      t.string :email
      t.string :address
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
