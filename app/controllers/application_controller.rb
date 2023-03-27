class ApplicationController < ActionController::Base
  def page1; end

  def page2; end

  def page3
    redirect_to page2_path, status: :see_other
  end

  def page4; end

  def programming_languages
    @programming_languages = ProgrammingLanguage.all.reverse_order
    @programming_language = ProgrammingLanguage.new
  end

  def create_programming_language
    @programming_language = ProgrammingLanguage.new params.require(:programming_language).permit(:name, :release_date)

    @programming_language.save!

    @counter = ProgrammingLanguage.count

    @programming_language.broadcast_render_to :stream_test, partial: 'application/create_programming_language', locals: { counter: ProgrammingLanguage.count }
  end
end
