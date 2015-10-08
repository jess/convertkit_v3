require 'spec_helper'

describe "get a list of tags" do
  subject { ConvertkitV3::Client.new("f9922361d11e7339cc1cde3d54c071")}

  it 'returns a list of tags' do
    expect(subject.tags.keys).to include("courses")
  end
end
