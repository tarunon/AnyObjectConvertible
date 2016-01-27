# AnyObjectConvertible
Convert your own struct/enum to AnyObject easily.

## Sumally 
In swift, struct or enum cannot convert to AnyObject
```swift
NSNotificationCenter.defaultCenter().postNotificationName("foo", object: YourOwnStruct()) // Fail
```
Of course, you may wrap value using Box\<T\>.
```swift
class Box<T> {
  let value: T
  init(value: T) {
    self.value = value
  }
}
NSNotificationCenter.defaultCenter().postNotificationName("foo", object: Box(YourOwnStruct())) // OK
```

But Box\<T\> unwrap is too lazy.
```swift
let value = (notification.object as? Box<YourOwnStruct>)?.value
```

You can cast your struct/enum directory if implement AnyObjectConvertible at that type.
```swift
extension YourOwnStruct: AnyObjectConvertible {}

NSNotificationCenter.defaultCenter().postNotificationName("foo", object: YourOwnStruct()) // OK
let value = notification.object as? YourOwnStruct
```

## Installation
Use carthage.
```ruby
github "tarunon/AnyObjectConvertible"
```

## License
MIT
