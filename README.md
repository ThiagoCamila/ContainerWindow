# ContainerWindow

[![Platform](https://img.shields.io/cocoapods/p/ContainerWindow.svg?style=flat)]
![Swift](https://img.shields.io/badge/%20in-swift%205.1-orange.svg)


## Description
<u>ContainerWindow</u> a second window based on window, which supports to hide into a ball.


## Installation

### CocoaPods

```ruby
pod 'ContainerWindow'
```

### Carthage

not support yet.

## Usage

```swift
 // init ContainerWindow
 ContainerWindow.shared.ballWidth = 60
 ContainerWindow.shared.isShowPanExitView = true // pan to show exit view
 ContainerWindow.shared.ballImage = UIImage(named: "thiago")
/* optional: set init stay postion (default: right of screen edge, middle of horizon)
        let screenSize = UIScreen.main.bounds
        ContainerWindow.shared.stayPoint = CGPoint(x: screenSize.width - ContainerWindow.shared.ballWidth - 10, y: 600)
// */
 
 // push a new controller to ContainerWindow
 let controller = UIViewController()
 controller.view.backgroundColor = .blue
 ContainerWindow.shared.push(root: controller, in: self.navigationController)

 // hide the controller in ContainerWindow
 ContainerWindow.shared.hide()

 // show the origin controller in ContainerWindow
 ContainerWindow.shared.show()

 // or destroy the controller in ContainerWindow
 ContainerWindow.shared.destroy()

 // other properties
 ContainerWindow.shared.ballView.addSubview(customView) // add custom view into ball you like
 ContainerWindow.shared.nav = currentNav // change nav, push method set this property
 ContainerWindow.shared.imageView = customImageView

 if ContainerWindow.shared.isHideIntoBall {
     // hide into ball, do something
 }
```

## Requirements

- iOS 9.0+
- Swift 4.2 to 5.1


## License

<u>ContainerWindow</u> is under the MIT license.
