class AdminUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         #:registerable,:recoverable,
         :rememberable, :trackable, :validatable

  def sys_admin?
  end

  def product_manager?
  end
end
