RailsAdmin.config do |config|

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  
  # == Cancan ==
  config.authorize_with :cancan
  config.parent_controller = 'ApplicationController' 
  
  config.total_columns_width = 9999999

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
   config.authorize_with :cancancan  

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
   config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
     history_index
     history_show
  end

  
# =================================================


  config.excluded_models= [Product, ProductFeature, CountryOfOrigin, Pfeature, WasteType, Feasibility]

  config.model 'User' do
    edit do
      exclude_fields :versions
      fields do
        help false
      end
    end
    list do
      exclude_fields  :versions
    end

    #  http://stackoverflow.com/questions/11658281/rails-admin-display-name-instead-of-id   # 2017-05-16 kwruby 
    # see the model for this item as well.
    object_label_method do
      :fullnameclock
    end
  end

  config.model 'Cilist' do
    edit do
      exclude_fields :versions, :user, :sort_order, :active_status,  :feasibility 
      fields do
        help false
      end
    end  
    list do
      include_fields :id, :current_state, :improvement_suggestion, :implementation_status, :responsible, 
      :comment, :internal_note, :points_awarded, :cell_or_location, :note_to_originator, :user,
      :created_at, :updated_at, :benefit
      # field :current_state
      exclude_fields  :versions, :sort_order, :active_status,  :feasibility
    end  
  end
  # :feasibilities,

end
