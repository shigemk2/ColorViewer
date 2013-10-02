class ColorsDetailController < UIViewController
  def initialize(color)
    @color = color
  end

  def viewDidLoad
    super
    self.initWithColor
  end

  def initWithColor
    gradient = CAGradientLayer.layer
    gradient.frame = view.bounds
    gradient.colors = [@color.CGColor, UIColor.whiteColor.CGColor]
    view.layer.addSublayer(gradient)
  end
end
