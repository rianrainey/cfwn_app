# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  firstName  :string(255)
#  lastName   :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :firstName, :lastName, :role_ids
  has_and_belongs_to_many :roles
  accepts_nested_attributes_for :roles

  has_many :entries
  has_many :workouts, :through => :entries

  # Check if user has a given role
  def has_role?(*role_names)
    self.roles.where(:name => role_names).present?
  end

  def is_admin?
    admin_roles = ["Super Admin", "Admin"] 
    self.roles.where(:name => admin_roles).present?
  end
  # Join first and last names of user
  def name
    [firstName, lastName].join(" ")
  end
  
end
