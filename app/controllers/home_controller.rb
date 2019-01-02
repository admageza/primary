class HomeController < ApplicationController
  def index
    @articles = Article.all
    @posts = Post.all
    @performers = Performer.all
    @publications = Publication.all
    @teachers = Teacher.all
    @staffs = Staff.all
  end
end
