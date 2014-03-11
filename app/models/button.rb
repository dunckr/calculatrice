class Button

  def initialize(title,frame)
    @title = title
    @frame = frame
  end

  def title; @title; end
  def frame; @frame; end

  All = [
    Button.new('1',[[0,229], [74,84]]),
    Button.new('2',[[75,229], [84,84]]),
    Button.new('3',[[159,229], [84,84]]),
    Button.new('4',[[0,315], [77,84]]),
    Button.new('5',[[78,315], [84,84]]),
    Button.new('6',[[159,315], [84,84]]),
    Button.new('7',[[0,400], [77,84]]),
    Button.new('8',[[78,400], [84,84]]),
    Button.new('9',[[159,400], [84,84]]),
    Button.new('0',[[3,484], [84,84]]),
    Button.new('C',[[0,143], [74,84]]),
    Button.new('neg',[[78,143], [84,84]]),
    Button.new('%',[[159,143], [84,84]]),
    Button.new('/',[[244,143], [76,84]]),
    Button.new('*',[[241,229], [77,84]]),
    Button.new('-',[[244,315], [76,84]]),
    Button.new('+',[[244,400], [76,84]]),
    Button.new('=',[[244,484], [76,84]])
  ]
end
