describe "View 'calc'" do
  tests CalcController

  before do
    @label = view ''
  end

  it "should have the correct title" do
    @label.text.should == ''
  end

  it "should be able to set the display" do
    tap '1'
    tap '2'
    @label.text.should == '12'
  end

  it "should be able to set the display2" do
    tap '4'
    tap '5'
    @label.text.should == '45'
  end
  it "should be able to set the display3" do
    tap '7'
    tap '8'
    @label.text.should == '78'
  end
  it "should be able to set the display4" do
    tap '9'
    tap '2'
    tap '2'
    tap '1'
    @label.text.should == '9221'
  end

end
