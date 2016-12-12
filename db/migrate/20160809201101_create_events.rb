class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.timestamp :timestamp
      t.string :string
      t.string :hostname
      t.references :org, foreign_key: true

      t.timestamps
    end
  end
end
