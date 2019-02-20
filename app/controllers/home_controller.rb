class HomeController < ApplicationController
  def index
    @articles = Article.all
    @posts = Post.all
    @performers = Performer.all
    @publications = Publication.all
    @teachers = Teacher.all
    @staffs = Staff.all
    @maternaires = Maternaire.all
    @performers = Performer.page(params[:page]).per(3)
    @staffs = Staff.page(params[:page]).per(3)
  end
end

