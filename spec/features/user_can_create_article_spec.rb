require 'rails_helper'

feature 'User can write new article' do
before do
    visit root_path
    click_on 'New Article'
    fill_in 'Title', :with => 'Tables'
    fill_in 'Text', :with => 'and sit on chairs, yes chairs'
    click_on 'Create Article'
end

describe 'User can write an article' do
    it 'User should see success message' do
        expect(page).to have_content 'Article created!'
    end
end
end