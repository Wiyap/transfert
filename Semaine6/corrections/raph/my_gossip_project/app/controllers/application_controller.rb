class ApplicationController < ActionController::Base
  add_flash_types :success, :danger
  include SessionsHelper
  include HomeHelper
end
