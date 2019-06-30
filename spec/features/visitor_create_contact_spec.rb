require "rails_helper"

feature "Comtact Creation" do 
  scenario "allows acees to contacts page" do
    visit new_contacts_path

    expect(page).to have_content 'Контакты'
  end  
end