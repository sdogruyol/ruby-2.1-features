module Refinements
	
  refine String do
    
    def hello
      puts "Hello #{self}!"
    end

  end
end

using Refinements

"Serdar".hello