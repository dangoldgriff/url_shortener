require 'spec_helper'

describe Url do
  it { should validate_presence_of :long_url }

  it 'should generate a shortened url' do 
    new_url = Url.create(:long_url => "http://www.epicodus.com")
    new_url.short_url.should eq "short" + new_url.id.to_s
  end
end
