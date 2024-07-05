![Cocoapods platforms](https://img.shields.io/cocoapods/p/PerformanceSuite)
[![CocoaPod Version](https://img.shields.io/cocoapods/v/KIF.svg?style=flat)](https://cocoapods.org)
<img src="https://img.shields.io/badge/swift5-compatible-green.svg?style=flat" alt="Swift 5 compatible" />

# LocalizeKit

## Installation
---
### Cocoapods

LocalizeKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:


e.g.:
```ruby
pod 'LocalizeKit', '1.0.0'
```

### Swift Package Manager

1. File > Swift Packages > Add Package Dependency
2. Add `https://github.com/jadernunes/LocalizeKit.git`

_OR_

Update `dependencies` in `Package.swift`
```swift
dependencies: [
    .package(url: "https://github.com/jadernunes/LocalizeKit.git", .upToNextMajor(from: "1.0.0"))
]
```

## Usage
---
1. Create your `Localizable.strings` file.
```swift
"home_title" = "Home of my app"
```

2. Create a file where you'll store your enumeration keys'.
```swift
import LocalizeKit

enum HomeStrings: String, LocalizableString {
    case title = "home_title"
}
```
3. Now you can get the localized string where you want
```swift
import SwiftUI

struct MyView: View {

    var body: some View {
        Text(HomeStrings.title.localized())
    }
}
```

## `Other cases`

### If you want to pass a value
---
1. On you `Localizable.strings` file you can use `%@` to expect a value at this place.
```swift
"home_title" = "Home of my app"
"number_of_people" = "%@ people"
```

2. Your can keep `HomeStrings` as is.
```swift
import LocalizeKit

enum HomeStrings: String, LocalizableString {
    case title = "home_title"
    case numberOfPeople = "number_of_people"
}
```

3. On UI you can pass the value to the `localized(...)` function.
```swift
import SwiftUI

struct MyView: View {

    var body: some View {
        Text(HomeStrings.numberOfPeople.localized("1"))
    }
}
```
