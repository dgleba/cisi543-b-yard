class Cilist < ApplicationRecord
  belongs_to :waste_type
  belongs_to :benefit
  belongs_to :implementation_status
  # belongs_to :feasibility


 
  # 2021-03-07_Sun_13.49-PM
  belongs_to :user
  # belongs_to :user, :class_name => "User"
  # belongs_to :responsible_person, :class_name => "User"  

  has_paper_trail
  
  default_scope { order(created_at: :desc) }
  
end
