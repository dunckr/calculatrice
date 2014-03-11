class Operation

  def initialize(title,frame)
    @title = title
    @frame = frame
  end

  def title; @title; end
  def frame; @frame; end

  All = [
    Operation.new('C',[[0,229], [74,84]]),
    Operation.new('neg',[[75,229], [84,84]]),
    Operation.new('%',[[159,229], [84,84]]),
    Operation.new('/',[[0,315], [77,84]]),
    Operation.new('*',[[0,315], [77,84]]),
    Operation.new('+',[[0,315], [77,84]]),
    Operation.new('-',[[78,315], [84,84]]),
    Operation.new('=',[[159,315], [84,84]])
  ]

end
