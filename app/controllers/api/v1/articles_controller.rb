module Api::V1
  class ArticlesController < BaseApiController
    def index
      articles = Article.order(updated_at: :desc)
      render json: articles, each_serializer: Api::V1::ArticlePreviewSerializer
    end

    def show
      render json: article_path, serializer: Api::V1::ArticleSerializer
    end

    private

      def article_path
        @article = Article.find(params[:id])
      end
  end
end
