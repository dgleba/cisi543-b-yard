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
      can :read, [ Product, Role,  Cilist, WasteType, Benefit,  ]
      can [ :create, :update,  ], [ Product, Cilist,]
      # can history
    
    elsif user.lr_supervisor?
      can :read, [ Product, Role, User, Cilist, WasteType, Benefit, Feasibility, ImplementationStatus, Point ]
      can [ :create, :update,  ], [ Product, Cilist, WasteType, Benefit, Feasibility, ImplementationStatus, Point ]
      # can history
      can :access, :rails_admin      
      can :dashboard,  :all                # allow access to dashboard
      can :manage, :dashboard                  # allow access to dashboard
      can :access, :dashboard                  # allow access to dashboard
      can :show_in_app, :all

    
    elsif user.lr_readonly?
      can :read, [  Role, CountryOfOrigin ]
      can :dashboard, :all
    end
    
  end
   
end

