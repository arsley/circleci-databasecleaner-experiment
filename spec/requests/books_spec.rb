require 'rails_helper'

RSpec.describe 'Books', type: :request do
  describe 'GET /books' do
    let!(:books) { create_list(:book, 10) }
    before { get books_path }

    it 'shows all books with authors' do
      expect(assigns[:books]).to eq(Book.all)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end
