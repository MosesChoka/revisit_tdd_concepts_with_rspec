require 'rails_helper'

RSpec.describe 'Home', type: :system do
  it 'renders homepage' do
    create(:page, :published)
    visit root_path


    within 'header' do
      expect(page).to have_link('My Blog')
    end

    articles = find_all('article') # find all <article> elements
    expect(articles.size).to eq(1) # check that there is only one article element

    within articles.first do # scope down expectation to first article element
      expect(page).to have_css('h2', text: Page.last.title) # check that it has h2 element with text of the last Page record's title attribute
    end
  end
end
