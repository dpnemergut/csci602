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
        else
          @#{attr_history} << @#{attr_name}
        end

        # set the value itself
        @#{attr_name}=val
      end
    }
  end

end

# Tests
#class TestClass1
#  attr_accessor_with_history :foo
#end
#class TestClass2
#  attr_accessor_with_history 'foo'
#end

#obj1 = TestClass1.new
#obj2 = TestClass2.new
#obj1.foo = :x
#obj1.foo = :y
#obj2.foo = 1
#obj2.foo = 2

#puts obj1.foo_history
#puts obj2.foo_history
