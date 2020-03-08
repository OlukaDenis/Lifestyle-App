module ApplicationHelper

    def post_date(post)
        post.created_at.strftime('%b %d, %Y at %I:%M %p')
    end

    def article_date(article)
        "#{time_ago_in_words(article.created_at)} ago"
    end

end
