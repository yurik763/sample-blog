require "rails_helper"
require "support/session_helper.rb"
require "support/database_cleaner.rb"

feature "Article Edit" do
  before(:each) do
    sign_up
  end

  scenario "allows user to edit article" do
    visit new_article_path

    fill_in :article_text, :with => "Content for new article"
    click_button I18n.t('articles.article_create')

    visit edit_article_path(Article.last)

    fill_in :article_title, :with => "Name"
    fill_in :article_text, :with => 'something'
    click_button I18n.t('articles.article_edit')   

   expect(page).to have_content I18n.t('comments.comment_title')
  end  
end