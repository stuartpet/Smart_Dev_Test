# frozen_string_literal: true

class Parse
  attr_reader :contents, :webpage_views

  def initialize
    @contents = []
    @webpage_views = []
  end

  def parse_file(file)
    File.foreach(file) { |line| @contents << line }
    @contents = @contents.map { |contents| contents.split(' ') }
  end

  def most_views
    @webpage_views = @contents.sort.map { |page| page[0] }
    @webpage_views = @webpage_views.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
    @webpage_views = @webpage_views.sort_by { |k, v| v}.reverse
  end
end
