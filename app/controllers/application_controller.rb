class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # http://api.rubyonrails.org/classes/ActionController/RequestForgeryProtection/ClassMethods.html
  # protect_from_forgery unless: -> { request.format.json? } # disables CSRF protection for all json requests

  protect_from_forgery with: :exception

end
