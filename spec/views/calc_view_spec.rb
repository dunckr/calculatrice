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

  it "should be able to clear" do
    tap '9'
    tap 'C'
    @label.text.should == ''
  end

  it "should be able to subtract" do
    tap '8'
    tap '-'
    tap '5'
    tap '='
    @label.text.should == '3'
  end

  it "should be able to multiply" do
    tap '4'
    tap '*'
    tap '9'
    tap '='
    @label.text.should == '36'
  end

  it "should be able to divide" do
    tap '6'
    tap '4'
    tap '/'
    tap '3'
    tap '='
    @label.text.should == '3'
  end

  it "should be able to make negative" do
    tap '7'
    tap 'neg'
    @label.text.should == '-7'
  end

  it "should be able to get the modulus" do
    tap '9'
    tap '8'
    tap '%'
    tap '9'
    tap '='
    @label.text.should == '8'
  end

end
