module SplatExtensions
  module ClassMethods
    def hi
      puts "hi"
    end
  end

  def extend_me
    include ClassMethods
  end
end