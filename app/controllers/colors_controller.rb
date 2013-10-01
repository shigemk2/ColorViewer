class ColorsController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.whiteColor

    @label = UILabel.alloc.initWithFrame(CGRectZero)
    @label.text = "Colors"
    @label.sizeToFit
    @label.center = 
    [self.view.frame.size.width / 2,
    self.view.frame.size.height / 2]
    @label.autoresizingMask = 
      UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin
    self.view.addSubview(@label)
    self.title = "Colors"

    ["red", "green", "blue"].each_with_index do |color_text, index| color = UIColor.send("#{color_text}Color")
      button_width = 80
      button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      button.setTitle(color_text, forState:UIControlStateNormal)
      button.setTitleColor(color, forState:UIControlStateNormal)
      button.sizeToFit
      button.frame = [
      [30 + index*(button_width + 10),
       @label.frame.origin.y + button.frame.size.height + 30],
      [80, button.frame.size.height]
    ]
    button.autoresizingMask =
      UIViewAutoresizingFlexibleBottomMargin | UIViewAutoresizingFlexibleTopMargin
    button.addTarget(self,
      action:"tap_#{color_text}",
      forControlEvents:UIControlEventTouchUpInside)
    self.view.addSubview(button)
    end
  end
end