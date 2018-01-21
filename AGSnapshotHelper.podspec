Pod::Spec.new do |s|
    s.name             = 'AGSnapshotHelper'
    s.version          = '0.0.1'
    s.summary          = 'Extension helps make snapshots for many content size categories at the same time.'
    s.source           = { :git => 'https://github.com/Grubas7/AGSnapshotHelper.git', :tag => s.version.to_s }
    s.authors          = { 'Allegro Group' => 'email@address.com' }
    s.license          = 'Apache License, v2.0.'
    s.homepage         = 'http://allegro.tech/open-source/'
    s.social_media_url = 'http://allegro.tech/'

    s.platform         = :ios, '8.0'
    s.requires_arc     = true

    s.source_files     = 'Pod/Classes/**/*.{h,m,swift}'
    s.frameworks       = 'XCTest', 'UIKit', 'Foundation'

    s.dependency 'FBSnapshotTestCase/Core', '~> 2.0'
end
