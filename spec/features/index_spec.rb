require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says Hej to Jenny' do
    expect(page).to have_selector 'h1'
    within 'h1' do
      expect(page).to have_content 'Hej Jenny'
    end
  end

  it 'displays Middleman logo' do
    expect(page).to have_css 'img[src*="middleman-logo.svg"]'  
  end

end
