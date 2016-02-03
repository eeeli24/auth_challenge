module ApplicationHelper

  def user_status(user)
    user.active? ? 'Active' : 'Inactive'
  end
end
