class User < ApplicationRecord
  scope :expired_users, ->{ where("created_at <= ?",(Time.now-1.hour) )}
  before_create :delete_the_repeated_customer_record
  def delete_the_repeated_customer_record
    @user = User.find_by(email: self.email)
    @user.destroy if @user
  end
  
  def generate_unique_primary_key
    self.id = SecureRandom.hex(16)
  end
end
