module ApplicationHelper
<<<<<<< HEAD

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
=======
>>>>>>> a1a6f8affd8c0f1500ac245dcdfaf5ee5e38de87
end
