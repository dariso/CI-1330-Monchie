class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatables
  has_one :usuario_cliente
  has_many :ordens

  ROLES = %w[admin moderator author]
 #belongs_to :role

  
  private
  
  def role_symbols
  [role.to_sym]
  end
  

end
