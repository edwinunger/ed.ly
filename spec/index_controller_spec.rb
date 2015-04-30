require 'spec_helper'

describe 'index_controller' do
  context 'GET /urls' do
    it 'lists all URLs in the database.' do
      get '/urls'
      expect(last_response).to be_ok
      expect(last_response.body).to include '.com'
    end
  end
  context 'POST /urls' do
    it 'saves a new URL to the database.'
  end
end

