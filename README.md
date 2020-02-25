# SwifXtensions

Some useful extensions for Swift:
[UIView](##uiview)
[UIColor](##uicolor)

## UIView

### Get view dimensions

**width**: CGFloat  
```Swift
let width = view.width
```
**height**: CGFloat  
```Swift
let height = view.width
```
**size**: CGSize  
```Swift
let size = view.size
```
**origin**: CGPoint
```Swift
let origin = view.origin
```  
**x**: CGFloat
```Swift
let viewX = view.x
```    
**y**: CGFloat  
```Swift
let viewY = view.y
```
**centerX**: CGFloat
```Swift
let centerX = view.centerX
```  
**centerY**: CGFloat
```Swift
let centerY = view.centerY
```   
**left**: CGFloat  
```Swift
let left = view.left
```
**right**: CGFloat  
```Swift
let right = view.right
```
**top**: CGFloat  
```Swift
let top = view.top
```
**bottom**: CGFloat
```Swift
let bottom = view.bottom
```  

### Round view corners
**round(corners: UIRectCorner, radius: CGFloat)**  
```Swift
view.round(corners: [.bottomLeft, .bottomRight], radius: 7.0)
```
### Get parent view controller
**parentViewController**
```Swift
let parentViewController = view.parentViewController
```
## UIColor

### Get UIColor from a hexadecimal string
```Swift
let color = UIColor(hexadecimalString: "#444444ff")!
```
Where final 'ff' stands for the alpha value.

## UIImage

### Returns image with color
let image = UIImage(color: 'UIColor', size: 'CGSize')

### Returns image from UIView
let image = UIImage(view: 'UIView')

### Returns gradien color image
let image = UIImage(color: '[CGColor]', size: 'CGSize')

### Returns image with alpha applied
let image = UIImage().alpha('CGFloat')

### Returns image with alpha gray applied
let image = UIImage().alphaGray('CGFloat')

### Calculates the aspect ratio between two sizes
let ratio = image.aspectRatio(between: 'CGSize', and: 'CGSize') 

### Scales an image to fit within a bounds with a size governed by the passed size. Also keeps the aspect ratio.
image.scaled(to: 'CGSize', scalingMode: .aspectFill)

### Scales image
image.scale(to: 'CGSize', scalingMode: .aspectFill)
