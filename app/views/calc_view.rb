class CalcView < UIView

  def initWithFrame(frame)
    if super
      addButton
    end
    self
  end

  def addButton
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle 'Take over', forState:UIControlStateNormal
    button.frame = [[0,50], [500,50]]
    addSubview button
  end

end
