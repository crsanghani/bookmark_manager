require 'spec_helper'

feature 'create links' do
  scenario 'creating a new link' do
    visit '/links/new'
    fill_in :title, with: 'Google'
    fill_in :url, with: 'http://www.google.co.uk/'
    fill_in :tags, with: 'search engine'
    click_button 'Add Bookmark'
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content 'Google'
    end
    Link.last.destroy
  end
end
