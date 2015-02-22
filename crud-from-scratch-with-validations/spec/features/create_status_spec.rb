require 'spec_helper'

describe 'status creation' do

it "creates a status" do
  within('/statuses/new') do
    fill_in('User', with: 'Melissa')
    fill_in('Status', with: 'This is a test status.')
    click_button('Create Status')
    expect(page).to have_content 'Status'
  end
end
end
