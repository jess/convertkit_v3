require 'spec_helper'

describe "get a list of tags" do
  subject { ConvertkitV3::Tag.all }

  it 'returns a list of tags' do
    expect(subject.first.id).to_not be_nil
  end

  it 'returns a tag object' do
    expect(subject.first.is_a?(ConvertkitV3::Tag)).to be true
  end
end

describe "subscribe" do
  subject { ConvertkitV3::Tag.all.first }
  it 'can subscribe to a tag' do
    sub = subject.subscribe(name: "Test User", email: "test@user.com")
    expect(sub["subscription"]["id"]).to_not be_nil
  end
end
