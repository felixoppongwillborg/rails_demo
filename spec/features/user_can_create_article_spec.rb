require 'rails_helper'

feature 'User can write new article' do
before do
    create(:user, email: 'user@mail.com', password: '12345678')
    visit root_path
    click_on 'Log in/Sign up'
    fill_in 'Email', :with => 'user@mail.com'
    fill_in 'Password', :with => '12345678'
    click_on 'Log in!'
    click_on 'New Article'
    fill_in 'Title', :with => 'Tables'
    fill_in 'Text', :with => 'and sit on chairs, yes chairs'
    click_on 'Create Article'
end

describe 'User can write an article' do
    it 'User should see success message' do
        expect(page).to have_content 'Article created'
    end
end
end