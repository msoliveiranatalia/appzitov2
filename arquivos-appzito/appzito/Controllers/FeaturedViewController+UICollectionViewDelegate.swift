//
//  FeaturedViewController+UICollectionViewDelegate.swift
//  appzito
//
//  Created by nmso on 19/07/22.
//

import UIKit

extension FeaturedViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let movie: Movie
        
        if collectionView == self.popularCollectionView {
            movie = (popularMovies[indexPath.item])
        } else if collectionView == self.nowPlayingCollectionView{
            movie = (nowPlayingMovies[indexPath.item])
        }
        else if collectionView == self.upcomingCollectionView {
            movie = (upcomingMovies[indexPath.item])
        } else {
            //como seria a melhor forma de resolver isso?
            movie = (upcomingMovies[indexPath.item])
        }
        
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    
}
 
