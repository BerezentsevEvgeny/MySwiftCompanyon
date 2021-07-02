
import Foundation

class ContextMenu {
    // MARK: - Eable deleting possibility
    override func collectionView(_ collectionView: UICollectionView, contextMenuConfigurationForItemAt indexPath: IndexPath, point: CGPoint) -> UIContextMenuConfiguration? {
        
        let config = UIContextMenuConfiguration(identifier: nil, previewProvider: nil) { (elements) -> UIMenu? in
            let delete = UIAction(title: "Delete") { (action) in
                self.deleteEmoji(at: indexPath)
            }
            return UIMenu(title: "", image: nil, identifier: nil, options: [], children: [delete])
        }
        return config
    }
    
    func deleteEmoji(at indexPath: IndexPath) {
        emojis.remove(at: indexPath.row)
        collectionView.deleteItems(at: [indexPath])
    }
}
