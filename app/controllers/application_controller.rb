class ApplicationController < ActionController::Base
  def page1; end

  def page2; end

  def page3
    redirect_to page2_path, status: :see_other
  end
end
