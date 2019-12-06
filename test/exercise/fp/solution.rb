module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        country = _array['rating_kinopoisk'].size

        puts country
      end

      def chars_count(_films, _threshold)
        ewer
      end
    end
  end
end
