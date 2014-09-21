# Assignment 2
# Collaborators:
#  Daniel Nemergut
#  Garrett Stauber

class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s # make sure it's a string
    attr_reader attr_name # create the attribute's getter
    attr_history = attr_name+'_history'
    attr_reader attr_history # create bar_history getter

    self.class_eval %Q{
      def #{attr_name}=(val)
        # add to history
        if(@#{attr_history}.nil?)
          @#{attr_history} = [nil] if @#{attr_history}.nil?
        end
        @#{attr_history} << val

        # set the value itself
        @#{attr_name}=val
      end
    }
  end

end

# Tests
"""class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 3
f.bar = :wowzo
f.bar = 'boo!'

g = Foo.new
g.bar = 4
g.bar = :dude
g.bar = 'cool!'

puts f.bar
puts g.bar
puts f.bar_history
puts g.bar_history
"""
