module MoviesHelper
    # the documentation said add things here,
    # feel free to delete all of this
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
        css_class = column == params[:sort] ? "sort-#{params[:direction]}" : nil
        link_to title, { sort: column, direction: direction }, { class: css_class }
      end
end
