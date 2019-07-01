require "rails_helper"
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Comment Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to create new comment" do
    visit new_article_path

    fill_in :article_text, :with => "Content for new article"
    click_button 'Добавить статью' 
    
    fill_in :comment_body, :with => 'something'
    click_button 'Добавить комментарий'   

   expect(page).to have_content I18n.t('comments.comment_title')
  end  
end