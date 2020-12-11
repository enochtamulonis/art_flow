module ApplicationHelper

  def is_active_by_action?(*action)
    if action.include?(params[:action])
      "text-blue-500"
    else
      "text-gray-900"
    end
  end

end
