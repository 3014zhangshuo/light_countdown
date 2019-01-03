class CreateCountdowns < ActiveRecord::Migration[5.2]
  def change
    create_table :countdowns do |t|
      t.string :event
      t.date :end_at
      
      t.timestamps
    end
  end
end
