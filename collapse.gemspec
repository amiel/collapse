Gem::Specification.new do |s|
  s.name = %q{collapse}
  s.version = "0.2"

  s.authors = ["Amiel Martin"]
  s.date = %q{2009-04-17}
  s.description = %q{Collapse allows a hash with arrays as values to merge and union common arrays instead of overwriting them.}
  s.email = %q{amiel@tatango.com}
  s.files = ["README.textile", 'lib', 'lib/collapse.rb', 'Rakefile.rb', 'test', 'test/test_helper.rb', 'test/test_collapse.rb']
  s.has_rdoc = false
  # s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  # s.rubygems_version = %q{1.3.0}
	s.test_files = Dir["test/test_collapse.rb"] unless $SAFE > 0
	s.summary = %q{Collapse allows a hash with arrays as values to merge and union common arrays instead of overwriting them. This is handy for parsing YAML config files that have sections loaded up dynamically but have defaults.}
end
