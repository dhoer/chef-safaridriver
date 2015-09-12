username = 'vagrant'
password = 'vagrant'

include_recipe 'java_se'
include_recipe 'selenium::hub'

node.set['safaridriver']['username'] = username
node.set['safaridriver']['password'] = password

include_recipe 'safaridriver'

node.set['selenium']['node']['username'] = username
node.set['selenium']['node']['password'] = password
node.set['selenium']['node']['capabilities'] = [
  {
    browserName: 'safari',
    maxInstances: 1,
    version: safari_version,
    seleniumProtocol: 'WebDriver'
  }
]

include_recipe 'selenium::node'
