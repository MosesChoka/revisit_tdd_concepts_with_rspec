require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by(:selenium_chrome_headless)
  end
  it 'renders homepage' do
    visit root_path


    within 'header' do
      expect(page).to have_link('My Blog')
    end
  end
end
