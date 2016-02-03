class TestPagesController < ApplicationController
  before_action :authorized_user?, only: :secret

  def secret
  end

  def pub
  end

  private

  def authorized_user?
    unless user_signed_in?
      redirect_to root_url, notice: 'Must be signed in to access secret page'
    end
  end
end
