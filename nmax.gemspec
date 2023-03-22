lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path'nmax/version'

  Gem::Specification.new do |spec|
    spec.name          = "nmax"
    spec.version       = Nmax::VERSION
    spec.authors       = ["right9alt"]
    spec.email         = ["right9alt@gmail.com"]
    spec.summary       = 'gem find n max numbers'
    spec.description   = 'gem find n max numbers'
    spec.homepage      = "https://website.com"
    spec.license       = "MIT"
    spec.files = Dir['README.md', 'LICENSE','lib/**/*/rake', 
                     'nmax.gemspec', 'Gemfile', 'Rakefile', 
                     'lib/**/*.rb'
                    ]
    spec.required_ruby_version = '>= 2.5.0'
    spec.extra_rdoc_files = ['README.md']

    spec.add_development_dependency "rubocop", "~> 0.60"
    spec.add_development_dependency "rspec", "~> 3.0"
    spec.add_development_dependency "rubocop-rspec", "~> 1.37"
  end
