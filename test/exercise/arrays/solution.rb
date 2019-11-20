module Exercise
  module Arrays
    class << self
      def replace(array)
        i = 0
        k = 1
        new_array = []
        max = array[0]
        while k < array.size 
          if array[k] > max
            max = array[k]
          end
          k = k + 1  
        end 
        max_in_the_array = max

        while i < array.size
          if array[i] > 0
            new_array[i] = max_in_the_array
          else
            new_array[i] = array[i]
          end
            i += 1
        end
        new_array
      end
    

       def search(_array, _query)
        low = 0
        high = _array.length - 1
        if low > high
          -1 
        else
        while low <= high
          mid = low + (high - low) / 2
          guess = _array[mid]
           if (_query < guess)
             high = mid - 1
           elsif (_query > guess)
             low = mid + 1
           else
             break mid  
           end        
           if low > high
            break -1    
           end 
         end
        end
      end
    end
  end
end
