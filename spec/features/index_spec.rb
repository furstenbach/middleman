require 'spec_helper'

describe 'index', type: :feature do

  before do
    visit '/'
  end

  it 'says Welcome' do
    expect(page).to have_selector 'h1'
    within '.welcome' do
      expect(page).to have_content 'Welcome'
    end
  end

  it 'displays Tokyo view' do
    expect(page).to have_css 'img[src*="https://images.unsplash.com/photo-1443170412500-d04323a4eb57?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&s=963d78ab6f5007441822fa9af299c0f7"]'
  end

  it 'displays project list' do
    expect(page).to have_css '.projects'
    within '.projects' do
      expect(page).to have_content 'Acumen'
      expect(page).to have_content 'Bilfritt'
    end
  end

  it 'renders footer partial' do
    expect(page).to have_selector 'footer'
    within 'footer' do
      expect(page).to have_content 'Copyright'
    end
  end

  it 'renders header partial' do
    expect(page).to have_selector 'header'
    within 'header' do
      expect(page).to have_content 'Home'
      expect(page).to have_content 'About'
      expect(page).to have_content 'Projects'
      expect(page).to have_content 'Blog'
    end
  end

end
