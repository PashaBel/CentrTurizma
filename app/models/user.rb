class User < ApplicationRecord
  belongs_to :user_type
  belongs_to :center
  def is_admin?
    self.user_type.lookup_code == User_Type::ADMIN
  end
end
