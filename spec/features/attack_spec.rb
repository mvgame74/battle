feature 'Attacking Player 12' do
  scenario 'submitting names' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Charlotte attacked Mittens'
  end
end