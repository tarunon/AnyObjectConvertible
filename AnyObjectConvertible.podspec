Pod::Spec.new do |s|
  s.name             = "AnyObjectConvertible"
  s.version          = "0.0.3"
  s.summary          = "Convert your own struct/enum to AnyObject easily."
  s.description      = <<-DESC
Convert your own struct/enum to AnyObject easily.
You can cast your struct/enum directory if implement AnyObjectConvertible at that type.

- extension YourOwnStruct: AnyObjectConvertible {}
- NSNotificationCenter.defaultCenter().postNotificationName("foo", object: YourOwnStruct()) // OK
- let value = notification.object as? YourOwnStruct
DESC
  s.homepage         = "https://github.com/tarunon/AnyObjectConvertible"
  s.license          = 'MIT'
  s.author           = { "tarunon" => "croissant9603@gmail.com" }
  s.source           = { :git => "https://github.com/tarunon/AnyObjectConvertible.git", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.source_files = 'AnyObjectConvertible/*.swift'

end