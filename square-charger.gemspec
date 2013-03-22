# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'square-charger/version'

Gem::Specification.new do |gem|
  gem.name          = "square-charger"
  gem.version       = Square::Charger::VERSION
  gem.authors       = ["Rian Rainey"]
  gem.email         = ["rian@rianrainey.com"]
  gem.description   = %q{Calculate amount to charge customers to ensure you get the amount owed after Square takes their fees.}
  gem.summary       = %q{Square Charger determines the amount of money to charge a customer to ensure you
                         get the amount owed after Square takes their fees. Square charges variable fees 
                         based largely on the presence of the customer's credit card and can be burdensome.
                         This gems helps alleviate that pain.}
  gem.homepage      = "https://github.com/rianrainey/Square-Charger"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
