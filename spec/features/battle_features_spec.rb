require_relative 'web_helpers'
RSpec.feature "home_page", type: :feature do
  context "filled in form" do


    scenario "players fill in their forms and see their names on the screen" do
      sign_in_and_play
      expect(page).to have_content("Player1 => Kenny and Player2 => Abdul")
    end

    scenario "player 1's and 2's hitpoints are displayed on the screen" do
      sign_in_and_play
      expect(page).to have_content("Kenny: 100 HP")
      expect(page).to have_content("Abdul: 100 HP")
    end

  end
end