require 'spec_helper'

describe ParkOrganizer do

  parks = ParkOrganizer.new([
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
                            ])

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

  parks2 = ParkOrganizer.new([
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
                               },
                               {
                                 :id=>2,
                                 :name=>"Calaway Park",
                                 :city=>"Calgary",
                                 :state=>"Alberta",
                                 :country=>"Canada"
                               }
                             ])

  parks_by_country = {
    "Canada" => [
      {
        :id=>2,
        :name=>"Calaway Park",
        :city=>"Calgary",
        :state=>"Alberta",
        :country=>"Canada"
      }
    ],
    "United States" => [
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
  }

  it "sorts the parks by country" do
    expect(parks2.sort_by_country).to eq(parks_by_country)
  end


end