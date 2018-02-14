//
//  ViewController.swift
//  ClassPassClone
//
//  Created by Ryuya Tosaka on 2018/02/13.
//  Copyright © 2018年 ryuya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{
    
    private var pageControl: UIPageControl!
    private var scrollView: UIScrollView!
    private var myImageView: UIImageView!

    
    override func viewDidLoad() {
        
        // ビューの縦、横のサイズを取得する.
        let width = self.view.frame.maxX
        let height = self.view.frame.maxY
        
        // ScrollViewを取得する.
        scrollView = UIScrollView(frame: self.view.frame)
        // ページ数を定義する.
        let pageSize = 4
        // 縦方向と、横方向のインディケータを非表示にする.
        scrollView.showsHorizontalScrollIndicator = false;
        scrollView.showsVerticalScrollIndicator = false
        // ページングを許可する.
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        // スクロールの画面サイズを指定する.
        scrollView.contentSize = CGSize(width: CGFloat(pageSize) * width, height: 0)
        // ScrollViewをViewに追加する.
        self.view.addSubview(scrollView)
        
        // ページ数分ボタンを生成する.
        for i in 0 ..< pageSize {
            
        }
        
        // PageControlを作成する.
        pageControl = UIPageControl(frame: CGRect(x:0, y:self.view.frame.maxY - 100, width:width, height:50))
        pageControl.backgroundColor = UIColor.clear
        // PageControlするページ数を設定する.
        pageControl.numberOfPages = pageSize
        
        // 現在ページを設定する.
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        
        self.view.addSubview(pageControl)
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        // スクロール数が1ページ分になったら時.
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            // ページの場所を切り替える.
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }
    
}
