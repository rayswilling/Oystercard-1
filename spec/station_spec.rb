require 'station'

describe Station do

  station = Station.new("Aldgate", "2")
  
  it "tests to see if station has a name" do
    expect(station.name).to eq("Aldgate")
  end

  it "test to see if station has a zone" do
    expect(station.zone).to eq("2")
  end
end
