class CalcView < UIView

  def initWithFrame(frame)
    if super
      @current = ''
      addLabel
      addButtons
    end
    self
  end

  def addLabel
    @label = UILabel.alloc.initWithFrame [[0, 0], [320, 145]]
    @label.textColor = UIColor.blackColor
    @label.font = UIFont.systemFontOfSize 100
    @label.text = @current
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

  def isDigit(value)
    /\d/ =~ value
  end

  def number(sender)
    operation = sender.titleLabel.text.to_s
    if isDigit operation
      @current += operation
    else

      if operation == '=' and @operand

        if @operand == '+'
          @current = (@previous.to_i + @current.to_i).to_s
          @previous = @operand = ''

        elsif @operand == '-'
          @current = (@previous.to_i - @current.to_i).to_s
          @previous = @operand = ''
        end


      elsif operation == 'C'
        @previous = @current = @operand = ''
      else
        @previous = @current
        @operand = operation
        @current = ''
      end
    end

    @label.text = @current
  end

end
