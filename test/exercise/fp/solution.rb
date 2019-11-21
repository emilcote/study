module Exercise
  module Fp
    class << self
      # Обратиться к параметрам фильма можно так:
      # film["name"], film["rating_kinopoisk"], film["rating_imdb"],
      # film["genres"], film["year"], film["access_level"], film["country"]
      def rating(_array)
        b = _array.select {|film| "#{film["country"]}".include? "," && !"#{film["rating_kinopoisk"]}".include? "0" && !"#{film["rating_kinopoisk"]}".include? "nil" }
        
          
      
        puts b
      end

      def chars_count(_films, _threshold)
        0
      end
    end
  end
end
