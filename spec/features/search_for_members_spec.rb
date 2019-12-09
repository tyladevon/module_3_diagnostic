require 'rails_helper'

describe "As a User" do
  context "When I visit the homepage" do
    context "I select 'Gryffindor' from the select field and click 'search'" do
      it "I am re-routed to '/search' and see total members of 'The Order' for the Griffindor House" do

        visit '/'
        select "Griffindor", from: :house
        click_on "Search For Members"

        expect(current_path).to eq('/search')
        expect(page).to have_content("21 results")
        expect(page).to have_css(".members", count: 21)

      # .name
      # .role(if exists)
      # .house
      # .patronis(if exists)
      end
    end
  end
end
