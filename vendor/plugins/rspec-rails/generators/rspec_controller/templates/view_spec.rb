require 'spec_helper'

describe "/<%= class_name.underscore %>/<%= action %>" do
  before(:each) do
    render '<%= class_name.underscore %>/<%= action %>'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app_p/views/<%= class_name.underscore %>/<%= action %>])
  end
end