# SafariDriver Cookbook

[![Cookbook Version](http://img.shields.io/cookbook/v/safaridriver.svg?style=flat-square)][supermarket]
[![Build Status](http://img.shields.io/travis/dhoer/chef-safaridriver.svg?style=flat-square)][travis]
[![GitHub Issues](http://img.shields.io/github/issues/dhoer/chef-safaridriver.svg?style=flat-square)][github]

[supermarket]: https://supermarket.chef.io/cookbooks/selenium
[travis]: https://travis-ci.org/dhoer/chef-safaridriver
[github]: https://github.com/dhoer/chef-safaridriver/issues

This cookbook installs SafariDriver (https://github.com/SeleniumHQ/selenium/wiki/SafariDriver).

## Requirements

- Chef 12.3+

### Platforms

- Mac OS X

### Cookbooks

- safari 
- macosx_gui_login 

## Usage

Include cookbook in recipe or run list. Username and password are required to login to GUI.  

### Attributes

- `node['safaridriver']['username']` - Username to login as. Required.
- `node['safaridriver']['password']` -  Password for username. Required.
- `node['safaridriver']['url']` - URL of SafariDriver to download.

### Example

#### Install SafariDriver 

```ruby
node.set['safaridriver']['username'] = 'username'
node.set['safaridriver']['password'] = 'password'

include_recipe 'safaridriver'
```

See [safaridriver_test::default](https://github.com/dhoer/chef-safaridriver/blob/master/test/fixtures/cookbooks/safaridriver_test/recipes/default.rb) 
for a complete example that includes Selenium install.

## Getting Help

- Ask specific questions on [Stack Overflow](http://stackoverflow.com/questions/tagged/safaridriver).
- Report bugs and discuss potential features in [Github issues](https://github.com/dhoer/chef-safaridriver/issues).

## Contributing

Please refer to [CONTRIBUTING](https://github.com/dhoer/chef-safaridriver/blob/master/CONTRIBUTING.md).

## License

MIT - see the accompanying [LICENSE](https://github.com/dhoer/chef-safaridriver/blob/master/LICENSE.md) file for details.
