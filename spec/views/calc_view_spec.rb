describe "View 'calc'" do
  tests CalcController

  before do
    @label = view ''
  end

  it "should have the correct title" do
    @label.text.should == ''
  end

  it "should be able to display numbers" do
    tap '1'
    tap '2'
    @label.text.should == '12'
  end

  it "should be able to display different numbers" do
    tap '9'
    tap '2'
    tap '2'
    tap '1'
    @label.text.should == '9221'
  end

  it "should be able to add" do
    tap '1'
    tap '5'
    tap '+'
    tap '3'
    tap '='
    @label.text.should == '18'
  end

end
