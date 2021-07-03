
class MainCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "MainCollectionViewCell"
    var posterImage = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configureMainCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureMainCell() {
        addSubview(posterImage)
        posterImage.layer.cornerRadius = 10
        posterImage.clipsToBounds = true
        posterImage.image = UIImage(named: "moviePlaceholder")
        posterImage.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(10)
            maker.left.equalToSuperview()
            maker.right.equalToSuperview()
            maker.bottom.equalToSuperview().inset(30)
        }
    }
            
        
}
