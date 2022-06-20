feature 'Posting peeps' do
  scenario 'A user can add a new peep message to Chitter' do
    visit('/peeps')
    click_button('Post peep')
    expect(current_path).to eq('/post')
    fill_in 'peep', with: "This is a new peep"
    click_button('Submit Peep')
    expect(current_path).to eq '/peeps'
    expect(page).to have_content 'This is a new peep'
  end
end


