class BlogsController < ApplicationController
  def index #記事一覧+Topページ
    @blogs = Blog.all
  end

  def show #詳細表示ページ
    @blog = Blog.find(params[:id])
  end

  def new #新規投稿ページ
    @blog = Blog.new
  end

  def create #記事を保存
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blog_path(blog.id)
  end

  def edit #記事編集ページ
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
