# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = 'comparable-reverse'
  spec.version = '0.1.0'
  spec.authors = ['Shannon Skipper']
  spec.email = ['shannonskipper@gmail.com']

  spec.summary = 'Provides a `Reverse` to reverse sort order.'
  spec.description = 'Reverse sort order of `it` in a block with `Reverse[it]`.'
  spec.homepage = 'https://github.com/havenwood/comparable-reverse'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.3.0'

  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) || f.start_with?(*%w[test/ .git .github Gemfile Rakefile])
    end
  end

  spec.require_paths = %w[lib]
  spec.metadata['rubygems_mfa_required'] = 'true'
end
