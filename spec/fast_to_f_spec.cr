require "./spec_helper"

describe FastToF do
  it { FastToF.parse?("1.5").should eq 1.5 }
  it { FastToF.parse?("1").should eq 1.0 }
  it { FastToF.parse?(" 1").should eq nil }
  it { FastToF.parse?("asdfasdfds").should eq nil }
end
