# frozen_string_literal: true
class Parse
  def initialize
    @file = []
    @webpage_views = []
    @unique_views = []
  end

  def parse_file(file)
    File.foreach(file) { |line| @file << line }
    @file = @file.map { |contents| contents.split(' ') }
  end

  def views_of_pages
    @webpage_views = @file.sort.map { |page| page[0] }
    @webpage_views = @webpage_views.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
    @webpage_views = @webpage_views.sort_by { |_k, v| v }.reverse
  end

  def unique_page_visits
  end
end
