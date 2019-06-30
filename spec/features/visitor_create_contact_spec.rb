require "rails_helper"

feature "Comtact Creation" do 
  scenario "allows acees to contacts page" do
    visit new_contacts_path

    expect(page).to have_content  I18n.t('contacts.contact_us')
  end  
end