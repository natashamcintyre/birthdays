require "birthday_list"

describe BirthdayList do
  let(:name) { double("name") }
  let(:birthday) { double("birthday") }
  let(:friend_class) { double :Friend }

  it { is_expected.to be_instance_of(BirthdayList) }

  it { is_expected.to respond_to(:store) }

  describe '#store' do
    it "creates friend" do
      allow(friend_class).to receive(:new)
      expect(subject.store(name, birthday)).to be_instance_of(friend_class)
    end

    it "stores friend in directory" do
      expect { subject.store(name, birthday) }.to change { subject.directory }
    end
  end

  describe '#print_list' do
    it "prints name and birthday" do
      subject.store(name, birthday)
      expect(subject.print_list).to eq "#{name}: #{birthday}"
    end
  end

end
