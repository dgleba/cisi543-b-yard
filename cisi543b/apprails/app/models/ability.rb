class Ability
  include CanCan::Ability

  def initialize(user)

    if user.lr_admin?
      can :manage, :all
      can :access, :rails_admin       # only allow admin users to access Rails Admin
      can :dashboard,  :all                # allow access to dashboard

    # remember to add roles to user.rb
    #
    # http://hibbard.eu/authentication-with-devise-and-cancancan-in-rails-4-2/  
    #

    elsif user.lr_regular?
      can :read, [  Role,    Benefit,  ]
      # can [ :create, :update,  ], [ Product, ]
      can [ :read, :create, :update, ], [ Cilist ], user_id: user.id
      can [ :read,  ], [ Point, PointsBalance], user_id: user.id
      # can history
    
    elsif user.lr_supervisor?
      can :read, [  Role, User,  Benefit,  ImplementationStatus, Point , PointsBalance]
      can [ :create, :update,  ], [    Benefit,  ImplementationStatus, Point  ]
      can [ :read, :create, :update, ], [ Cilist ]
      can [ :read,  :update, ], [ User ]
      # can history
      can :access, :rails_admin      
      can :dashboard,  :all                # allow access to dashboard
      can :manage, :dashboard                  # allow access to dashboard
      can :access, :dashboard                  # allow access to dashboard
      can :show_in_app, :all
      can :history, :all
    
    elsif user.lr_readonly?
      can :read, [  Role,  ]
      can :dashboard, :all
    end
    
    # Feasibility, WasteType,


  end
   
end

