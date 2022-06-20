feature 'view homepage' do
  scenario 'shows the message on the homepage' do
    visit '/'
    expect(page).to have_content 'Welcome to Chitter'
  end
end