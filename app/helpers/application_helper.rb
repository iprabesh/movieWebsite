module ApplicationHelper
   def page_title
        if content_for?(:title)
            "Movie - #{content_for(:title)}"
        else
            "Movie"
        end
    end
end
