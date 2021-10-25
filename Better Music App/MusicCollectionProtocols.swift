//
//  MusicCollectionProtocols.swift
//  Better Music App
//
//  Created by Michael Redig on 4/2/19.
//  Copyright © 2019 Michael Redig. All rights reserved.
//

import Foundation
import MediaPlayer

protocol MusicCategory {
	var sectionsArray: [[MPMediaItemCollection]] { get }
	
	var cateogry: String { get set }
	
	mutating func sortSections()
}

extension MusicCategory {

	
	
}


struct GenreMusicCategory: MusicCategory {
	
	var cateogry: String = "Genre"
	
	var sectionsArray: [[MPMediaItemCollection]]
	
	init() {
		sectionsArray = []
		sortSections()
	}
	
	mutating func sortSections() {
		let genres = MPMediaQuery.genres()
		guard let sections = genres.collectionSections, let allGenres = genres.collections else {
			return
		}
		
		
		//	let genres = MPMediaQuery.genres()
		//	print(genres.collections?.count)
		//	for genre in genres.collections! {
		//		print(genre.representativeItem?.genre)
		//	}
		
		print("items directly under genre header: \(genres.items)")
		print("item sections directly under genre header: \(genres.itemSections)")

		for section in sections {
			sectionsArray.append(Array(allGenres[section.range.lowerBound..<section.range.upperBound]))
		}
	}
	
	
}
