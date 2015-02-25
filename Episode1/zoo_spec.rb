require './zoo'

describe Animal do

  it "should not raise an exception whenn we try ro like it" do
    expect{
      Animal.new.likes?(:bacon)
      }.to_not raise_error
  end
end


describe Panda do

  it "should like bamboo" do
    expect(Panda.new.likes?(:bamboo)).to eq(true)
  end

  it "should like bamboo as a string" do
    expect(Panda.new.likes?('bamboo')).to eq(true)
  end

  it "should not like grasshoppers" do
    expect(Panda.new.likes?(:grasshoppers)).to eq(false)
  end
end


describe Lion do

  it "should like wilderbeasts" do
    expect(Lion.new.likes?(:wilderbeasts)).to eq(true)
  end

  it "should like zeebras" do
    expect(Lion.new.likes?(:zeebras)).to eq(true)
  end

  it "should not like salad" do
    expect(Lion.new.likes?(:salad)).to eq(false)
  end
end

describe Zookeeper do

  it "should be able to feed bamboo to panda" do
    panda = Panda.new
    Zookeeper.new.feed(food: :bamboo, to: panda)
  end
  it "should be able to feed zeebras to lion"

end