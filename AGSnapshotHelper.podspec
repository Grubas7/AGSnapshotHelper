Pod::Spec.new do |s|
    s.name             = 'AGSnapshotHelper'
    s.version          = '0.0.1'
    s.summary          = 'A short description of ${POD_NAME}.'

    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    s.description      = <<-DESC
    DESC

    s.source           = { :git => 'https://github.com/Grubas7/AGSnapshotHelper', :tag => s.version.to_s }
    s.authors          = { 'Allegro Group' => 'email@address.com' }
    s.license          = 'Apache License, v2.0.'
    s.homepage         = 'http://allegro.tech/open-source/'
    s.social_media_url = 'http://allegro.tech/'

    s.platform         = :ios, '8.0'
    s.requires_arc     = true

    s.source_files     = 'Pod/Classes/**/*.{h,m}'
    s.frameworks       = 'XCTest', 'UIKit', 'Foundation'

    s.dependency 'FBSnapshotTestCase/Core', '~> 2.0'
    s.dependency 'OCMock', '~> 3.2'
end
