import UIKit

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
    
   // Добавление нескольких вьюх в CustomCell
        func addSubviews(_ views: UIView...) {
            for view in views { addSubview(view) }
        }
     
    // New configuration for any cells При каждом изменении создавать новую конфигурацию не думая о старой
    
    let cell: UICollectionViewCell = ...
    
    var content = cell.defaultContentConfiguration()
    
    content.image = UIImage(sustemName: "house")
    content.text = "Hello"
    
    cell.contentConfiguration = content
    
    
    // Background Configuration
    BackgroundColor
    VisualEffect
    Stroke
    Insets and CornerRadius
    CustomView
    // List Content Configuration
    Image
    Text
    Secondary text
    Layout metrics and behaviors
    
    override func updateConfiguration(using state: UICellConfigurationState) {
        //code
    }
    override func setNeedsUpdateConfiguration() {
        //code
    }
    
}
