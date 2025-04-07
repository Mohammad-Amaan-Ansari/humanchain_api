class CreateIncidents < ActiveRecord::Migration[7.1]
  def change
    create_table :incidents do |t|
      t.string :title
      t.text :description
      t.string :severity
      t.datetime :reported_at

      t.timestamps
    end
  end
end
