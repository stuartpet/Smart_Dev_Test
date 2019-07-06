# frozen_string_literal: true

require 'parse'

describe Parse do
  describe 'parse_file' do
    it 'parses a file' do
      expect(subject.parse_file('webserver.log')).to include(['/help_page/1', '126.318.035.038'])
    end
  end
end
