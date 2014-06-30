class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatables
  has_one :usuario_cliente
  has_many :ordens

  ROLES = %w[restaurante cliente]
 #belongs_to :role

  def roles=(roles)
  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
  end

  def roles
  ROLES.reject do |r|
    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
  end
  end
  
  def is?(role)
  roles.include?(role.to_s)
  end
  private
  
  def role_symbols
  [role.to_sym]
  end
  

end
