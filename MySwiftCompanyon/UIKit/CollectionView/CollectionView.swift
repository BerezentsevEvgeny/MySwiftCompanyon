
import Foundation
import UIKit

class Collection: UIViewController {
    
    private var collectionView: UICollectionView?
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: configureLayout())
    
    collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
        
    guard let collectionView = collectionView else { return }
    
    view.addSubview(collectionView)
    collectionView.frame = view.bounds
    collectionView.backgroundColor = .white
    
    collectionView.dataSource = self
    collectionView.delegate = self





}

        

        
        
        
        
        

        
        
        
