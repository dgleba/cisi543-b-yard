class User < ActiveRecord::Base

  has_paper_trail
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable, :timeoutable, :confirmable
         
  #validates :email, presence: true, uniqueness: true, email: true
  validates :email, presence: true, uniqueness: true 
  

  def to_s
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08
    # "#{email}, #{name}, #{first_name}, #{last_name}"
    "#{name}, #{first_name} #{last_name} - #{clocknum}, #{email}"
  end

  # def name02
  #   # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08
  #   # "#{email} - #{name}, #{first_name} #{last_name}"
  #   "#{name} - #{first_name} #{last_name}, #{clocknum}, #{email}"
  # end

  def fullnameclock
    # show columns contents, not record object like: 	#<Vehicle:0x007f343b3f2890>	2016-06-08
    # "#{email},#{name}"
    # "#{email}"
    "#{name}, #{first_name} #{last_name}, #{clocknum}, #{email}"
  end


  after_initialize :init_defaults

  def init_defaults
    # set default role to lr_regular and save it to the db.
    self.role_id  ||= 7           #will set the default value only if it's nil
    # https://stackoverflow.com/questions/328525/rails-how-can-i-set-default-values-in-activerecord
    #example. self.address ||= build_address #let's you set a default association
  end


  # validates_presence_of :name

  before_save :assign_role


  def assign_role
    self.role = Role.find_by name: "lr_minimal" if self.role.nil?
  end

  def lr_admin?
    self.role.name == "lr_admin"
  end

  def lr_minimal?
    self.role.name == "lr_minimal"
  end

  def lr_readonly?
    self.role.name == "lr_readonly"
  end
  
  def lr_create?
    self.role.name == "lr_create"
  end

  def lr_regular?
    self.role.name == "lr_regular"
  end

  def lr_supervisor?
    self.role.name == "lr_supervisor"
  end

  def lr_seller?
    self.role.name == "lr_seller"
  end
  
     
 
  private

  def password_update?
    password.present? || new_record?
  end

  belongs_to :role
end
