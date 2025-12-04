import Foundation

func crashExample() -> String {
    let optionalString: String? = nil
    return optionalString // This will cause a runtime error because optionalString is nil
}

print(crashExample())