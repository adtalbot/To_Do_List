require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show-exceptions, false)

describe('the to do list path', {:type => :feature}) do
  it('takes tasks input from user and adds it to a list of tasks') do
    visit('/')
    fill_in('task', :with => 'wash the dog')
    click_button('Submit')
    expect(page).to have_content('wash the dog')
  end
end
