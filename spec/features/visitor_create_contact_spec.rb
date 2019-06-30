require "rails_helper"

feature "Comtact Creation" do 
  scenario "allows acees to contacts page" do
    visit '/contacts'

    expect(page).to have_content 'Контакты'
  end  
end