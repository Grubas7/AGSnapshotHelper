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
        let initialContentSizeCategory = UIApplication.shared.preferredContentSizeCategory
        updateLabelWithText(initialContentSizeCategory.rawValue)
    }

    private func setUpAccessibilityObserver() {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIContentSizeCategoryDidChange,
                                               object: nil,
                                               queue: nil) { notification in
            if let userInfo = notification.userInfo, let newContentSize = userInfo[UIContentSizeCategoryNewValueKey] as? UIContentSizeCategory {
                self.updateLabelWithText(newContentSize.rawValue)
            }
        }
    }

    private func updateLabelWithText(_ text: String) {
        label.text = text
        label.font = UIFont.preferredFont(forTextStyle: .body)
        label.updateConstraintsIfNeeded()
    }
}
