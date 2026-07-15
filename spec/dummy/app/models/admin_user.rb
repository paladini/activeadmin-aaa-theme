class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  # Ransack: explicitly allowlist searchable attributes for security
  def self.ransackable_attributes(auth_object = nil)
    %w[created_at email id updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end
end
