class ColorsDetailController < UIViewController
  def initialize(color)
    @color = color
  end

  def viewDidLoad
    super
    self.initWithColor
  end

  def initWithColor
    self.view.backgroundColor = @color
  end
end
