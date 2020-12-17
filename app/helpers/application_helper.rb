module ApplicationHelper
  def current_order
    # USE find by id to avoid potentional errors
    if Order.find_by_id(session[:order_id]).nil?
      Order.new
    else
      Order.find_by_id(session[:order_id])
    end
  end

  def is_active_by_action?(*action)
    if action.include?(params[:action])
      "text-blue-500"
    else
      "text-gray-900"
    end
  end

end
