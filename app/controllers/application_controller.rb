class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :get_all_categories_authors

  def get_all_categories_authors
  	@categories = Category.all
  	@authors = Author.all
  end

  def comfirm_adim
  	unless current_user.try(:admin?)
  		redirect_to new_user_session_path
  	end
  end
end
