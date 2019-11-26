module Exercise
  module Fp2
    class MyArray < Array
      # Использовать стандартные функции массива для решения задач нельзя.
      # Использовать свои написанные функции для реализации следующих - можно.

      # Написать свою функцию my_each

      def my_each
        return if empty?
        tail = self
        while tail.any?
          head, *tail = tail
          yield(head)
        end
        self
      end

      # Написать свою функцию my_map

      def my_map
        results = MyArray.new
        my_reduce(results) { |acc, elem| acc << yield(elem) }
        results
      end

      # Написать свою функцию my_compact
      def my_compact
        result = MyArray.new
        my_reduce(result) do |acc, elem|
          acc << elem unless elem.nil?
          acc
        end
        result
      end

      # Написать свою функцию my_reduce
      def my_reduce(acc = nil)
        return if empty?
        tail = self
        until tail.empty?
          head, *tail = tail
          acc = if !acc.nil?
                  yield(acc, head)
                else
                  head
                end
        end
        acc
      end
    end
  end
end
