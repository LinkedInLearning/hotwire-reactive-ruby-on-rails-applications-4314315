class ApplicationController < ActionController::Base
  def page1; end

  def page2; end

  def page3
    redirect_to page2_path, status: :see_other
  end

  def page4; end

  def programming_languages
    @programming_languages = ProgrammingLanguage.all.reverse_order
  end
end
