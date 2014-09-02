class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title, presence: true, index: true
      t.string :description, presence: true
      t.integer :user_id, presence: true, index: true
      t.string :privacy, presence: true
      t.string :completion, presence: true

      t.timestamps
    end
  end
end
