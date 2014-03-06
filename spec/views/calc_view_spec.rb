describe "View 'calc'" do
  tests CalcController

  before do
    @button = view 'Take over'
  end

  it "should have the correct title" do
    @button.titleForState(UIControlStateNormal).should == 'Take over'
  end

  it "should add to the count when pressed" do
    # @count.text
  end

end
