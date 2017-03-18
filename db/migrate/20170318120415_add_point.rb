class AddPoint < ActiveRecord::Migration[5.0]
  def change
    create_table :points do |t|
      t.string :name,              null: false, default: ""
      t.float :longitude,          null: false
      t.float :latitude,           null: false
    end
  end
end
