# frozen_string_literal: true
module Counter
  def count(variable)
    (variable).each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
  end
end

module SortDescending
  def descending_order(variable)
    (variable).sort_by { |webpage, views| views }.reverse
  end
end

class Parse
  include Counter, SortDescending
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
    @webpage_views = count(@webpage_views)
    @webpage_views = descending_order(@webpage_views)
  end

  def unique_page_visits
    @unique_views = @file.uniq.map { |page| page[0] }
    @unique_views = count(@unique_views)
    @unique_views = descending_order(@unique_views)
  end
end
