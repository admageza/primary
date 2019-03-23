class HomeController < ApplicationController
  def index
    @articles = Article.all
    @posts = Post.all
    @performers = Performer.all
    @publications = Publication.all
    @teachers = Teacher.all
    @besteachers = Besteacher.all
    @staffs = Staff.all
    @maternaires = Maternaire.all
    @users = User.all
    @teachers = Teacher.page(params[:page]).per(3)
    @performers = Performer.page(params[:page]).per(3)
    @staffs = Staff.page(params[:page]).per(3)
  end
end

