module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(array)
        selected_array = array.select{ |film| film['country'].to_s.include?(',') && film['rating_kinopoisk'].to_f > 0 && !film['rating_kinopoisk'].to_s.empty? }
        array_rating = selected_array.map { |film| film['rating_kinopoisk'] }
        sum_rating = array_rating.reduce(0) { |acc, num| acc + num.to_f }
        result = sum_rating.to_f / array_rating.length
      end

      def chars_count(films, threshold)
        needed_films = films.select { |film| film['rating_kinopoisk'].to_f >= threshold.to_f && film['name'].include?('и')}
        needed_name = needed_films.map { |film| film['name'] }
        counting_letters = needed_name.map { |film| film.count('и') }
        result = counting_letters.reduce(0) { |acc, num| acc + num }
      end
    end
  end
end
