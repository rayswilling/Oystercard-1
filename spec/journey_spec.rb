require 'journey'
require 'oystercard'

describe Journey do
  let(:station) { double :station, 1 }

  it "has a penalty charge" do
    expect(subject.fare).to eq(Journey::PENALTY_FARE)
  end

  it "gives an entry station" do
    expect(subject.entry_station(:station)).to eq(:station)
  end

  it "knows that the journey is not complete" do
    expect(subject).not_to be_complete
  end

  it "gives a penalty fare if no exit station is given" do
    expect(subject.fare).to eq(Journey::PENALTY_FARE)
  end

  context 'gives an exit station' do
    let(:other_station) { double :other_station}
      it "gives an exit station" do
      expect(subject.exit_station(:other_station)).to eq(:other_station)
    end
  end

end
