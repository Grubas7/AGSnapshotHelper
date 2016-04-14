//
//  ExampleViewController.swift
//  AGSnapshotHelperExample
//
//  Created by Adam Grzegorowski on 10/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.setUpAccessibilityObserver()
    }

    override func viewDidLoad() {
        let initialContentSizeCategory = UIApplication.sharedApplication().preferredContentSizeCategory
        updateLabelWithText(initialContentSizeCategory)
    }

    private func setUpAccessibilityObserver() {
        let mainQueue = NSOperationQueue.mainQueue()

        NSNotificationCenter.defaultCenter().addObserverForName(UIContentSizeCategoryDidChangeNotification, object: nil, queue: mainQueue) { notification in
            if let userInfo = notification.userInfo, newContentSize = userInfo[UIContentSizeCategoryNewValueKey] as? String {
                self.updateLabelWithText(newContentSize)
            }
        }
    }

    private func updateLabelWithText(text: String) {
        label.text = text
        label.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        label.updateConstraintsIfNeeded()
    }
}
