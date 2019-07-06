# frozen_string_literal: true

require "list_views"

describe List do
  describe 'most_views' do
    it 'lists webpages with most page views from most page views to least' do
      most_views = instance_double('most_views')
      allow(most_views).to receive(:most_views).and_return("/home 90 visits")
    end
  end
end
