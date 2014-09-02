class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string  :body, presence: true
      t.references :commentable, polymorphic: true
      t.integer :author_id, presence: true

      t.timestamps
    end
    
    # skipping indexes for now. 
  end
end
