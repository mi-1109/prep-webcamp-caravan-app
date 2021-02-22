class BlogsController < ApplicationController
  def index #記事一覧+Topページ
  end

  def show #詳細表示ページ
  end

  def new
    @blog = Blog.new
  end

  def create #記事を保存
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit #記事編集ページ
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
