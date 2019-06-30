require "rails_helper"

feature "Comtact Creation" do 
  scenario "allows acees to contacts page" do
    visit new_contacts_path

    expect(page).to have_content  I18n.t('contacts.contact_us')
  end 

  scenario "allows a guest to create contact" do
    visit new_contacts_path
    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'
    click_button 'Отправить сообщение'

    expect(page).to have_content 'Спасибо'
  end
end