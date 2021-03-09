class Friend
  attr_reader :name, :birthday

  def initialize(name, birthday)
    @name = name
    @birthday = birthday
  end

  def data
    { :name => @name, :birthday => @birthday }
  end
end
