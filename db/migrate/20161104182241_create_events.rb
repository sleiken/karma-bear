class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string   :name, null: false
      t.text     :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer  :givers_needed

      t.integer  :charity_id

      t.timestamps
    end
  end
end
