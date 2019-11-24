class Post < ApplicationRecord
  scope :current_user_posts, ->(email_identity){  where(email: email_identity) }
end
