import UIKit

extension UIViewController {
    
    func setLargeTitleDisplayMode(_ largeTitleDisplayMode: UINavigationItem.LargeTitleDisplayMode) {
        switch largeTitleDisplayMode {
        case .automatic:
              guard let navigationController = navigationController else { break }
            if let index = navigationController.children.firstIndex(of: self) {
                setLargeTitleDisplayMode(index == 0 ? .always : .never)
            } else {
                setLargeTitleDisplayMode(.always)
            }
        case .always, .never:
            navigationItem.largeTitleDisplayMode = largeTitleDisplayMode
            navigationController?.navigationBar.prefersLargeTitles = true
        @unknown default:
                assertionFailure("never")
        }
    }
}
