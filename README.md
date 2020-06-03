# RingProgressView
Circular progress view with sections written using SwiftUI

![Sreen 1](https://github.com/cleverClosure/RingProgressView/blob/master/screenshots/screen1.png)

## Usage

```swift
var sections = [RingSection(start: 0, end: 0.15, color: UIColor.red), RingSection(start: 0.15, end: 0.3, color: UIColor.yellow), RingSection(start: 0.3, end: 0.4, color: UIColor.green), RingSection(start: 0.4, end: 0.7, color:  UIColor.blue)]

RingProgressView(sections: sections)
```
To animate initial progress use showRing variable

```swift
@State var showRing: Bool = false

RingProgressView(sections: sections, showRing: showRing)
    .onAppear {
        self.showRing = true
}
```
