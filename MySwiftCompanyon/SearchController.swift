
class BasicCollectionViewController: UICollectionViewController, UISearchResultsUpdating {
     
    let searchController = UISearchController()
    
    lazy var filteredItems: [String] = self.items

    private let items = [
        "Alabama", "Alaska", "Arizona", "Arkansas", "California",
        "Colorado", "Connecticut", "Delaware", "Florida",
        "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
   
        // Задаем параметры контроллера
        navigationItem.searchController = searchController
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        
        collectionView.setCollectionViewLayout(generateLayout(), animated: false)
    }
    

    
    // MARK: - DataSource
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredItems.count  // Поменять на фильтрованые
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BasicCollectionViewCell
        cell.label.text = filteredItems[indexPath.item]  // Поменять на фильтрованые
        return cell
    }
    
    // MARK: - Логика фильтрации элементов
    func updateSearchResults(for searchController: UISearchController) {
        if let searchString = searchController.searchBar.text, searchString.isEmpty == false {
            filteredItems = items.filter({ item in
                item.localizedCaseInsensitiveContains(searchString)
            })
        } else {
            filteredItems = items
        }
        collectionView.reloadData()
//        var snapshot = NSDiffableDataSourceSnapshot<Sections,Movie>()
//        snapshot.appendSections([.main])
//        snapshot.appendItems(filteredMovies)
//        dataSource.apply(snapshot)
    }
    
    
}
