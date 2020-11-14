class PagesController < ApplicationController
  before_action :is_admin?, only: [:admin]
  def home
    @newest_paintings = Painting.order(created_at: :desc).max(3)
  end

  def about
  end

  def admin
    @paintings = Painting.order(updated_at: :desc)
  end

  private

  def is_admin?
    redirect_to root_path unless current_user.try(:admin)
  end
end
