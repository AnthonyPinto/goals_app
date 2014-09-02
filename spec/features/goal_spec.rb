require 'rails_helper'

feature 'Create goals' do
  
  it 'has a new goal page' do
    # Page for goal creation.     
  end
  
  feature 'can save a goal' do
  end
  
  it 'requires being logged in' do
  end
  
end


feature 'View goals' do
  Scenario 'logged in' do
    it 'can see own goals' do
    end
    
  end
  
  Scenario 'logged in as another user' do
    it 'can see public goals' do
    end
    
    it 'cannot see private goals' do
    end
  end

end


feature 'Edit goals' do
  Scenario 'logged in' do

    it 'has an edit button' do
    end
    
  end
  
  Scenario 'logged in as another user' do   
     
    it 'has no edit button' do
    end
    
  end

end

feature 'Delete goals - has delete button' do
  
  Scenario 'logged in' do

    it 'has an delete button' do
    end
    
  end
  
  Scenario 'logged in as another user' do   
     
    it 'has no delete button' do
    end
    
  end

end