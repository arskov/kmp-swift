import Foundation
import KmpSample

for i in 1...10_000_000 {
    let clazzInstance = KmpClazz()
    
    // Call interfaceMethod
    let resultString = clazzInstance.interfaceMethod()
    // print("Result from interfaceMethod: \(resultString)")

    // Call returnInt
    if let intResult = clazzInstance.returnInt() {
        // print("Result from returnInt: \(intResult)")
    }

    // Call returnLong
    if let longResult = clazzInstance.returnLong() {
        // print("Result from returnLong: \(longResult)")
    }

    if i % 1_000_000 == 0 {
        print("Created \(i) objects")
    }
}
