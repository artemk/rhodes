require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../../spec_helper'
require 'net/http'

describe "Net::HTTPGenericRequest#path" do
  it "returns self's request path" do
    request = Net::HTTPGenericRequest.new("POST", true, true, "/some/path")
    request.path.should == "/some/path"

    request = Net::HTTPGenericRequest.new("POST", true, true, "/some/other/path")
    request.path.should == "/some/other/path"
  end
end