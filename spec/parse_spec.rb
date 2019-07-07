# frozen_string_literal: true

require 'parse'

describe Parse do
  describe 'parse_file' do
    it 'parses a file' do
      expect(subject.parse_file('webserver.log')).to include(['/help_page/1', '126.318.035.038'])
    end
  end

  describe 'views_of_pages' do
    it 'lists webpages with most page views from most page views to least' do
      subject.parse_file('webserver.log')
      expect(subject.views_of_pages).to eq([['/about/2', 90], ['/contact', 89], ['/index', 82], ['/about', 81], ['/help_page/1', 80], ['/home',
                                                                                                                                   78]])
    end
  end

  describe 'unique_page_visits' do
    it 'lists webpages with most unique page views from most to least' do
      unique_page_visits = double('unique_page_visits')
      allow(unique_page_visits).to receive(:unique_page_visits).and_return("/home 8 unique visits")
    end
  end
end
