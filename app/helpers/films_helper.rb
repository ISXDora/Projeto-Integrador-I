module FilmsHelper
    def checked(area)
        @film.category.nil? ? false : @film.category.match(area)
    end
end
