class CreatePolls < ActiveRecord::Migration[5.0]
  def change
    create_table :polls do |t|
      t.integer :vote
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
