//
//  FeaturedViewController+UICollectionViewDataSource.swift
//  appzito
//
//  Created by nmso on 18/07/22.
//

import UIKit

extension FeaturedViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.popularCollectionView {
            return popularMovies.count
        } else if  collectionView == self.nowPlayingCollectionView {
            return nowPlayingMovies.count
        } else if  collectionView == self.upcomingCollectionView {
            return upcomingMovies.count
        } else {
            return 0
        }
        
    }
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> PopularCollectionViewCell {
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
        
        cell?.titleLabel.text = popularMovies[indexPath.item].title
        cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdropPath)
        
        return cell ?? PopularCollectionViewCell()
    }
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        let cell = nowPlayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
        
        cell?.titleLabel.text = nowPlayingMovies[indexPath.item].title
        cell?.dateLabel.text = String (nowPlayingMovies[indexPath.item].releaseDate.prefix(4))
        cell?.image.image = UIImage (named: nowPlayingMovies[indexPath.item].posterPath)
        
        return cell ?? NowPlayingCollectionViewCell()
    }
    
    fileprivate func makeUpcomingCell(_ indexPath: IndexPath) -> UpcomingCollectionViewCell {
        let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: "upcomingCell", for: indexPath) as? UpcomingCollectionViewCell
        
        cell?.titleLabel.text = upcomingMovies[indexPath.item].title
        cell?.dateRelease.text = String (upcomingMovies[indexPath.item].releaseDate.prefix(4))
        cell?.posterPath.image = UIImage (named: upcomingMovies[indexPath.item].posterPath) ?? UIImage()
        
        return cell ?? UpcomingCollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView {
            return makePopularCell(indexPath)
            
        } else if collectionView == self.nowPlayingCollectionView {
            return makeNowPlayingCell(indexPath)
            
        } else if collectionView == self.upcomingCollectionView {
            return makeUpcomingCell(indexPath)
            
        }else {
            
            return UICollectionViewCell()
            
        }
        
    }
}
