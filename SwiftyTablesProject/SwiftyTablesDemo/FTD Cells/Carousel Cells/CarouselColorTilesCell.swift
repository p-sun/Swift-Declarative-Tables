//
//  CarouselColorTilesCell.swift
//  FunctionalTableDataMyDemo
//
//  Created by Paige Sun on 2017-12-20.
//

import UIKit
import SwiftyTables

typealias CarouselColorTilesCell = CarouselCell<CarouselItemColorTilesCell>

class CarouselItemColorTilesCell: UICollectionViewCell, CarouselItemCell {
	
	typealias ItemModel = UIColor

	private static let size = CGSize(width: 100, height: 100)
	
	private let colorView = UIView()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		contentView.addSubview(colorView)
        colorView.constrainEdges(to: contentView)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	static func sizeForItem(model: ItemModel, in collectionView: UICollectionView) -> CGSize {
		return CarouselItemColorTilesCell.size
	}
	
    static func scrollDirection() -> UICollectionViewScrollDirection {
        return .horizontal
    }
    
	func configure(model: ItemModel) {
		colorView.backgroundColor = model
	}
}
