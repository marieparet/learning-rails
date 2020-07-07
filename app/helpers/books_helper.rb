module BooksHelper
    def book_link(un_livre)
        html = "<a href= '/books/#{un_livre.id}'>".html_safe
        html += if un_livre.category
        "#{un_livre.title} (#{un_livre.category.title})"
        else
        "#{un_livre.title}"
        end
        html += "</a>".html_safe
    end
end
