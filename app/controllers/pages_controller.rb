class PagesController < ApplicationController
  before_action :is_admin?, only: [:admin]
  before_action :set_order_items

  def home
    @newest_paintings = Painting.order(created_at: :desc).max(3)
  end

  def about
    @site_detail = SiteDetail.first if SiteDetail.count >= 1
  end

  def admin
    @paintings = Painting.order(updated_at: :desc)
    if SiteDetail.count >= 1
      @site_detail = SiteDetail.first
    else
      @site_detail = SiteDetail.new
    end
  end

  def submit_admin_form
    @site_detail = SiteDetail.new(site_detail_params)
    if @site_detail.save
      redirect_to pages_admin_path
    else
      redirect_to pages_admin_path
      flash[:alert] = "There was a problem with submission"
    end
  end

  def update_admin_form
    @site_detail = SiteDetail.first
    @site_detail.update(site_detail_params)
    if @site_detail.save
      redirect_to pages_admin_path
    else
      redirect_to pages_admin_path
      flash[:alert] = "There was a problem with submission"
    end
  end

  def contact
    @site_detail = SiteDetail.first if SiteDetail.count >= 1
  end

  private

  def site_detail_params
    params.require(:site_detail).permit(:content, :contact_info_email, :contact_info_phone, :contact_info_other)
  end

  def set_order_items
    @order_items = current_order.order_items
  end

  def is_admin?
    redirect_to root_path unless current_user.try(:admin)
  end
end
