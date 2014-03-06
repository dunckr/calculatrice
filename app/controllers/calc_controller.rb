class CalcController < UIViewController

  def loadView
    self.view = CalcView.alloc.init
  end

end
