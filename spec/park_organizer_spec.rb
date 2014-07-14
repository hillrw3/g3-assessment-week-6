require 'spec_helper'

describe ParkOrganizer do

  parks = [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  ]

  parks_by_id = {
    546 => {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    547 => {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  }

  it "sorts the parks by id" do
    expect(parks.sort_by_id).to eq(parks_by_id)
  end
end