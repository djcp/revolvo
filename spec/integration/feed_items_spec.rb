require 'spec_helper'

feature 'Visit site' do
  scenario 'a guest visits the site' do
    visit root_path
    page.body.should include('Welcome')
  end
end
