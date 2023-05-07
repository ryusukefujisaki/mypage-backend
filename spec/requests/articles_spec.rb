require 'rails_helper'

describe 'GET articles' do
  it 'Return all articles' do
    before_article_count = Article.all.count

    FactoryBot.create_list(:article, 10)
    get '/articles'
    json = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(json.length).to eq(before_article_count + 10)
  end
end
