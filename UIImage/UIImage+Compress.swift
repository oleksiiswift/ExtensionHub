import UIKit

extension UIImage {
    
    func compressJpeg(_ quality: CompressionQuality.CompressValue) -> Data? {
        return self.jpegData(compressionQuality: quality.rawValue)
    }
}


