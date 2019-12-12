require 'rails_helper'

RSpec.describe 'Authors', type: :request do
  describe 'GET / or /authors' do
    let!(:books) { create_list(:book, 10) }
    before { get authors_path }

    it 'shows all authors' do
      expect(assigns[:authors]).to eq(Author.all)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
