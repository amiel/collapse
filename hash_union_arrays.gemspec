Gem::Specification.new do |s|
  s.name = %q{hash_union_arrays}
  s.version = "0.2"

  s.authors = ["Amiel Martin"]
  s.date = %q{2009-04-17}
  s.description = %q{Allows a hash with arrays as values to merge and union common arrays instead of overwriting them.}
  s.email = %q{amiel@tatango.com}
  s.files = ["README.textile", 'lib/hash_union_arrays.rb', 'Rakefile.rb', 'test/*']
  s.has_rdoc = false
  # s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  # s.rubygems_version = %q{1.3.0}
	s.test_files = Dir["test/test_hash_union_arrays.rb"] unless $SAFE > 0
	s.summary = %q{Allows a hash with arrays as values to merge and union common arrays instead of overwriting them.}
end
