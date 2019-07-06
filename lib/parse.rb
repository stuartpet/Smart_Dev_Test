class Parse

  attr_reader :contents

  def initialize
    @contents = []
  end

  def parse_file(file)
      File.foreach(file) { |line| @contents << line }
      @contents = @contents.map { |i| i.split(' ') }
      @contents
    end
  end
