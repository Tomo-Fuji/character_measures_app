class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def which_elements_is_include(value)
    self.map.with_index{|item, i| i if item.include?(value)}.compact
  end
end
