class Cilist < ApplicationRecord
  belongs_to :waste_type
  belongs_to :benefit
  belongs_to :implementation_status
  # belongs_to :feasibility
  belongs_to :user

  has_paper_trail
  
  default_scope { order(created_at: :desc) }
  
end
