//
//  SnapshotHelperExampleTests.swift
//  AGSnapshotHelperExample
//
//  Created by Adam Grzegorowski on 10/04/16.
//  Copyright © 2016 Allegro Group. All rights reserved.
//

import FBSnapshotTestCase
import AGSnapshotHelper

class SnapshotHelperExampleTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()

        recordMode = false
    }

    func testExampleViewControllerWithSmallContentSizeCategory(){
        testView(initialView(), contentSizeCategory: UIContentSizeCategorySmall)
    }

    func testExampleViewControllerWithExtraLargeContentSizeCategory(){
        testView(initialView(), contentSizeCategory: UIContentSizeCategoryExtraLarge)
    }

    func testExampleViewControllerWithAccessibilityExtraExtraExtraLargeContentSizeCategory(){
        testView(initialView(), contentSizeCategory: UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
    }

    // MARK: Helpers

    func initialView() -> UIView {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateInitialViewController()

        return initialViewController!.view;
    }
}
