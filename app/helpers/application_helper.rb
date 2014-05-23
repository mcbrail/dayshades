module ApplicationHelper

  def flash_class(level)
    case level
    when :notice then "alert alert-info"
    when :success then "Category was saved success fully"
    when :error then "alert alert-error"
    when :alert then "alert alert-error"
    end
  end

	def error_messages_for(object)
		render(:partial => 'application/error_messages', :locals => {:object => object})
	end
end
