class CalcView < UIView

  def initWithFrame(frame)
    if super
      @count = ''
      addLabel
      addButtons
    end
    self
  end

  def addLabel
    @label = UILabel.alloc.initWithFrame [[0, 0], [320, 145]]
    @label.textColor = UIColor.blackColor
    @label.font = UIFont.systemFontOfSize 100
    @label.text = @count
    @label.adjustsFontSizeToFitWidth = true
    @label.textAlignment = NSTextAlignmentRight
    @label.backgroundColor = UIColor.whiteColor
    addSubview @label
  end

  def addButtons
    Button::All.each do |button|
      addButton button
    end
  end

  def addButton(option)
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle option.title, forState:UIControlStateNormal
    button.frame = option.frame
    button.addTarget self, action: :'number:', forControlEvents: UIControlEventTouchUpInside
    addSubview button
  end

  def number(sender)
    operation = sender.titleLabel.text

    # if operation.is_numeric?
    #   @count = @count + sender.titleLabel.text
    # else
    #   if operation == '='
    #     @label.text = @operand + @label.text
    #   else
    #     @operation = operation
    #     @operand = @label.text
    #   end
    # end
    # @label.text = @count.to_s
    @label.text = operation.to_s
  end

end
