import Foundation
import KmpSample

let clazzInstance = KmpClazz()

// Call interfaceMethod
let resultString = clazzInstance.interfaceMethod()
print("Result from interfaceMethod: \(resultString)")

// Call returnInt
if let intResult = clazzInstance.returnInt() {
    print("Result from returnInt: \(intResult)")
}

// Call returnLong
if let longResult = clazzInstance.returnLong() {
    print("Result from returnLong: \(longResult)")
}

var byteArray: [UInt8] = [0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0xFE, 0xCA, 0xFE]
let size = byteArray.count
byteArray.withUnsafeMutableBytes { rawBufferPointer in
    KmpSampleKt.readNativeByteArray(byteArray: rawBufferPointer.baseAddress!, size: Int32(size))
}


