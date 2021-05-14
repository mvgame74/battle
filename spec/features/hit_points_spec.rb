
feature 'See Hit Points' do
  scenario 'displaying the points' do
    sign_in_and_play
    #save_and_open_page #will save the web page and open the browser tyo display it
    expect(page).to have_content 'Mittens: 60HP'
  end
end