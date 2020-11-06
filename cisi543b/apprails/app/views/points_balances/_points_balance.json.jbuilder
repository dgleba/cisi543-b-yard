json.extract! points_balance, :id, :user_id, :clocknum, :name, :first_name, :last_name, :sum_points_awarded, :sum_points_spent, :points_balance, :created_at, :updated_at
json.url points_balance_url(points_balance, format: :json)
