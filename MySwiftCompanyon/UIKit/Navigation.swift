//
//  Navigation.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 29.06.2021.
//

import Foundation

//если NavigationController уже был создан
func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    let game = RequestManager.shared.games[indexPath.item]
    let vc = DetailViewController()
    vc.mainGame = game
    navigationController?.pushViewController(vc, animated: true)

}


// создаем и представляем NavigationController
@objc func imagesBtnTapped() {
    let destVC = ActorImagesCollectionVC()
    destVC.actorId = actorIdentity
    destVC.title = actorName
    let navController = UINavigationController(rootViewController: destVC)
    present(navController, animated: true)
}
}
