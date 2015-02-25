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

  it "should be able to eat" do
    panda = Panda.new.eat(:bamboo)
  end

  it "should be full after eating 30 bamboos" do
    panda = Panda.new
    31.times do
      panda.eat(:bamboo)
    end
    expect(panda).to be_full
  end

  it "should not be full after eating 1 bamboo" do
    panda = Panda.new
    1.times do
      panda.eat(:bamboo)
    end
    expect(panda).to_not be_full
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

  it "should be full after 11 meals" do
    lion = Lion.new
    11.times do
      lion.eat(:zeebras)
    end
    expect(lion).to be_full
  end

  it "should not be full after 1 meal" do
    lion = Lion.new
    lion.eat(:zeebras)
    expect(lion).to_not be_full
  end
end

describe Zookeeper do
# Not clear about receive, will dig into this tomorrow
  it "should be able to feed bamboo to panda" do
    panda = Panda.new
    expect(panda).to receive(:eat).with(:bamboo)
    Zookeeper.new.feed(food: :bamboo, to: panda)
  end
  it "should be able to feed zeebras to lion" do
    lion = Lion.new
    expect(lion).to receive(:eat).with(:zeebras)
    Zookeeper.new.feed(food: :zeebras, to: lion)
  end

end