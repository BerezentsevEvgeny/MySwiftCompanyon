//
//  CollectionViewList.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 01.08.2021.
//

import Foundation

func createDataSource() {
    let registration = UICollectionView.CellRegistration<UICollectionViewListCell,TaskList> { cell, indexPath, taskList in
        var content = cell.defaultContentConfiguration()
        content.text = taskList.name
        cell.contentConfiguration = content

    }

    dataSource = UICollectionViewDiffableDataSource<Sections,TaskList>(collectionView: collectionView, cellProvider: { collectionView, indexPath, taskList in
        collectionView.dequeueConfiguredReusableCell(using: registration, for: indexPath, item: taskList)
    })
}

func createLayout() {
    let configuration = UICollectionLayoutListConfiguration(appearance: .plain)
    let layout = UICollectionViewCompositionalLayout.list(using: configuration)
    collectionView.setCollectionViewLayout(layout, animated: false)
}

func createSnapshot() {
    var snapshot = NSDiffableDataSourceSnapshot<Sections,TaskList>()
    snapshot.appendSections([.main])
    snapshot.appendItems(TaskList.getTaskLists())
    dataSource.apply(snapshot)
}
