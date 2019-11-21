module Exercise
  module Arrays
    class << self
      def replace(array)
        i = 0
        k = 1
        new_array = []
        max = array.first
        while k < array.size
          max = array[k] if array[k] > max
          k += 1
        end
        max_in_the_array = max

        while i < array.size
          new_array[i] = if array[i] > 0
                           max_in_the_array
                         else
                           array[i]
                         end
          i += 1
        end
        new_array
      end

      def search(array, query)
        low = 0
        high = array.length - 1
        return -1 if low > high
        while low <= high
          mid = low + (high - low) / 2
          guess = array[mid]
          if query < guess
            high = mid - 1
          elsif query > guess
            low = mid + 1
          else
            break mid
          end
          break -1 if low > high
         end
     end
    end
  end
end
