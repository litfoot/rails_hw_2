module MoviesHelper

    # the documentation said add things here,
    # feel free to delete all of this
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = (column == params[:sort] && params[:direction] == 'asc') ? 'desc' : 'asc'
        link_to title, { sort: column, direction: direction }
      end
end
