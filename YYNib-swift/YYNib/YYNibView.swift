//
//  YYNibView.swift
//  YYNib-swift
//
//  Created by 昭荣伊 on 16/6/6.
//  Copyright © 2016年 昭荣伊. All rights reserved.
//

import UIKit

class YYNibView: UIView {
    
    var contentView:UIView!;
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        self.initWithSubviews();
        if (CGRectIsEmpty(frame)) {
            self.frame = (contentView?.bounds)!;
        } else {
            contentView?.frame = self.bounds;
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        self.initWithSubviews();
        self.contentView?.frame = self.bounds;
    }
    
    override var frame: CGRect {
        didSet {
            self.contentView?.frame = self.bounds;
        }
    }
    
    override var backgroundColor: UIColor? {
        didSet {
            self.contentView?.backgroundColor = self.backgroundColor;
        }
    }
    
    func initWithSubviews() {
        let className = "\(self.classForCoder)"
        self.contentView = NSBundle.mainBundle().loadNibNamed(className, owner: self, options: nil).first as? UIView;
        self.contentView?.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight];
        self.addSubview(self.contentView!);
        // Fix backgroundColor
        self.backgroundColor = self.contentView?.backgroundColor;
    }
    
}