class Goal < ActiveRecord::Base
  validates :title, :description, :user_id, :privacy, presence: true
  
  
  belongs_to(
    :user,
    class_name: 'User',
    foreign_key: :user_id,
    primary_key: :id
  )
end
