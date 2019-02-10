json.(article, :title, :image, :body, :created_at, :updated_at)
json.author article.user, partial: 'profiles/profile', as: :user
+json.favorited signed_in? ? current_user.favorited?(article) : false
+json.favorites_count article.favorites_count || 0


json.extract! article, :id, :title, :image, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
