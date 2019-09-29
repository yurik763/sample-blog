require "rails_helper"
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Article Creation" do
  before(:each) do
    sign_up
  end

  scenario "allows user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('articles.articles_new')
  end

  scenario "allows user to create new article" do
    visit new_article_path
    fill_in :article_text, :with => 'something'
    click_button I18n.t('articles.article_create')  

   expect(page).to have_content I18n.t('comments.comment_title')
  end  
end