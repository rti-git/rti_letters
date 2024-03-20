class ArticlesController < ApplicationController
  def index
  end


  def select
    selected_article = SelectedArticle.new(article_id: params[:article_id], admin_id: current_admin.id)
    if selected_article.save
      redirect_to articles_path, notice: '選擇成功'
    else
      redirect_to articles_path, alert: '失敗'
    end
  end
end
