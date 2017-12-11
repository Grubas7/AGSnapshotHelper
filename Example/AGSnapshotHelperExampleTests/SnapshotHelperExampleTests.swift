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
        test(initialView(), contentSizeCategory: .small)
    }

    func testExampleViewControllerWithExtraLargeContentSizeCategory(){
        test(initialView(), contentSizeCategory: .extraLarge)
    }

    func testExampleViewControllerWithAccessibilityExtraExtraExtraLargeContentSizeCategory(){
        test(initialView(), contentSizeCategory: .accessibilityExtraExtraExtraLarge)
    }

    // MARK: Helpers

    func initialView() -> UIView {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateInitialViewController()

        return initialViewController!.view;
    }
}
