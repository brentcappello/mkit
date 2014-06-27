class CreateMarathons < ActiveRecord::Migration
  def change
    create_table :marathons do |t|
      t.string :name
      t.text :description
      t.date :event_date
      t.string :city
      t.string :state
      t.string :country
      t.string :registration_url
      t.string :website_url
      t.string :logo
      t.string :image
      t.string :map

      t.timestamps
    end
  end
end
