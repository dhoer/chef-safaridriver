name 'safaridriver'
maintainer 'Dennis Hoer'
maintainer_email 'dennis.hoer@gmail.com'
license 'MIT'
description 'Selenium WebDriver for Safari'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

supports 'mac_os_x'

depends 'safari', '~> 1.0'
depends 'macosx_gui_login', '~> 1.0'

source_url 'https://github.com/dhoer/chef-safaridriver' if respond_to?(:source_url)
issues_url 'https://github.com/dhoer/chef-safaridriver/issues' if respond_to?(:issues_url)
