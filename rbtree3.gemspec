Gem::Specification.new do |s|
  s.name = 'rbtree3'
  s.version = '0.5.0'
  s.authors = ['Kyrylo Silin', 'OZAWA Takuma']
  s.email = %w[silin@kyrylo.org]

  s.summary = 'A RBTree is a sorted associative collection that is ' \
              'implemented with a Red-Black Tree.'
  s.description = 'A RBTree is a sorted associative collection that is ' \
                  'implemented with a Red-Black Tree. It maps keys to ' \
                  'values like a Hash, but maintains its elements in ' \
                  'ascending key order. The interface is the almost ' \
                  "identical to that of Hash.\n\n" \
                  'This is a fork of the original gem that fixes various ' \
                  'bugs on Ruby 2.3+.'
  s.homepage = 'https://github.com/kyrylo/rbtree3'
  s.license = 'MIT'

  s.metadata['homepage_uri'] = s.homepage
  s.metadata['source_code_uri'] = s.homepage
  s.metadata['changelog_uri'] = File.join(s.homepage, 'blob/master/ChangeLog')

  s.files = [
    *Dir.glob('./**/*.{rb,c,h}'),
    'README',
    'LICENSE',
    'ChangeLog'
  ]

  s.test_files = %w[test.rb]

  s.required_ruby_version = '>= 2.1'

  s.platform = Gem::Platform::RUBY
  s.extensions = %w[extconf.rb]
  s.require_paths = %w[./]
end
