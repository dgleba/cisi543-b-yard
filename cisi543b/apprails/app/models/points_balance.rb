class PointsBalance < ApplicationRecord

    # this model access the view...
    
    # see view code at: sftp://159.203.5.237/ap/cisi543-b-yard/cisi543b/sql/sum.points.awarded.points.balance.sql
    
    self.table_name  = 'vw_points_balance'
    # specify primary key name if it's other than id
    self.primary_key = 'user_id'


end
