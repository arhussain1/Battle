def sign_in_and_play
    visit '/'
    within('form') do
      fill_in 'player1 name', with: 'Kenny'
      fill_in 'player2 name', with: 'Abdul'
    end
    click_button "submit"
end