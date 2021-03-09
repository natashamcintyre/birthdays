require_relative "./friend.rb"

class BirthdayList
  attr_reader :directory, :friend

  def initialize
    @directory = []
  end

  def store(name, birthday)
    friend = Friend.new(name, birthday)
    # @directory.push(friend)
  end

  def print_name
    @friend[:name]
  end

  def print_list
    list = []
    @directory.each do |friend|
      line = "#{friend[:name]}: #{friend[:birthday]}"
      list << line
    end
    list.join("\n")
  end

end
