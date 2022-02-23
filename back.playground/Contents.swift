import UIKit

var greeting = "Hello, playground"
 
class People: NSObject {
    var number = 0
}

var p = People()
p.number = 100
print(p)

func changeP(_ p: inout People) {
    p.number = 1
    print(p.memoryAddress)
    p = People()
}

changeP(&p)
print(p.memoryAddress)

public extension NSObject {
    public var memoryAddress : String? {
        let str = "\(self.self)".components(separatedBy: ": ")
        guard str.count > 1 else { return nil }
        return str[1].replacingOccurrences(of: ">", with: "")
    }
}


