enum MyError: Error {
    case invalidType
}

struct MyStruct {
    var myVariable: Any
    
    func setMyVariable(value: Any) throws {
        // This check will always pass because myVariable is of type Any
        if let _ = value as? String {
            self.myVariable = value
        } else {
            throw MyError.invalidType
        }
    }
    
    func getMyVariable() -> Any {
        return self.myVariable
    }
}

var myStruct = MyStruct(myVariable: "Hello, World")
do {
    try myStruct.setMyVariable(value: 123456)
} catch {
    print("Invalid type")
}

let returnedValue = myStruct.getMyVariable()
print(returnedValue)