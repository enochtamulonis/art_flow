class PagesController < ApplicationController
  before_action :is_admin?, only: [:admin]
  before_action :set_order_items

  def home
    @newest_paintings = Painting.order(created_at: :desc).max(3)
  end

  def about
  end

  def admin
    @paintings = Painting.order(updated_at: :desc)
  end

  def contact
  end

  private

  def set_order_items
    @order_items = current_order.order_items
  end

  def is_admin?
    redirect_to root_path unless current_user.try(:admin)
  end
end
