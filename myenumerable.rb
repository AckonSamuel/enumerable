module MyEnumerable
    def all?(&block)
      result = true
      if block_given?
        each do |element|
          result = block.call(element) if element != false || !element.nil?
          break if result == false
        end
      else
        result = true
      end
      result
    end
  
    def any?(&block)
      result = false
      if block_given?
        each do |element|
          result = block.call(element) if element != false || !element.nil?
          break if result == true
        end
      else
        result = false
      end
      result
    end
  
    def filter(&block)
      result = []
      each do |element|
        result << element if block.call(element) == true
      end
      result
    end
  end
  