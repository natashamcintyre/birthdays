require "friend"

describe Friend do
  let(:name) { double :name }
  let(:birthday) { double :birthday }
  subject { Friend.new(name, birthday) }
  it "creates instance of Friend class" do
    expect(subject).to be_instance_of(Friend)
  end

  it "creates friend with name" do
    expect(subject.name).to eq name
  end

  it "creates friend with birthday" do
    expect(subject.birthday).to eq birthday
  end

  it "creates hash containing data" do
    expect(subject.data).to include( :name => name, :birthday => birthday )
  end
end
