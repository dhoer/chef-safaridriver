name 'safaridriver_test'
maintainer 'Dennis Hoer'
maintainer_email 'dennis.hoer@gmail.com'
license 'MIT'
description 'Tests SafariDriver'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

depends 'java_se', '~> 8.0'
depends 'selenium'
depends 'safaridriver'

# TODO: Remove when Selenium 3.x is released
depends 'macosx_autologin'
