class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, presence: true, uniqueness: true, index: true
      t.string :password_digest, presence: true
      t.string :session_token, presence: true, index: true
      
      t.timestamps
    end
  end
end
