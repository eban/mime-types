# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "mime-types"
  s.version = "1.25"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Austin Ziegler"]
  s.date = "2013-08-30"
  s.description = "This library allows for the identification of a file's likely MIME content\ntype. This is release 1.25, adding experimental caching and lazy loading\nfunctionality.\n\nThe caching and lazy loading features were initially implemented by Greg\nBrockman (gdb). As these features are experimental, they are disabled by\ndefault and must be enabled through the use of environment variables. The cache\nis invalidated on a per-version basis; the cache for version 1.25 will not be\nreused for version 1.26.\n\nTo use lazy loading, set the environment variable +RUBY_MIME_TYPES_LAZY_LOAD+\nto any value other than 'false'. When using lazy loading, the initial startup\nof MIME::Types is around 12\u{2013}25\u{d7} faster than normal startup (on my system,\nnormal startup is about 90 ms; lazy startup is about 4 ms). This isn't\ngenerally useful, however, as the MIME::Types database has not been loaded.\nLazy startup and load is just *slightly* faster\u{2014}around 1 ms. The real advantage\ncomes from using the cache.\n\nTo enable the cache, set the environment variable +RUBY_MIME_TYPES_CACHE+ to a\nfilename where MIME::Types will have read-write access. The first time a new\nversion of MIME::Types is run using this file, it will be created, taking a\nlittle longer than normal. Subsequent loads using the same cache file will be\napproximately 3\u{bd}\u{d7} faster (25 ms) than normal loads. This can be combined with\n+RUBY_MIME_TYPES_LAZY_LOAD+, but this is *not* recommended in a multithreaded\nor multiprocess environment where all threads or processes will be using the\nsame cache file.\n\nAs the caching interface is still experimental, the only values cached are the\ndefault MIME::Types database, not any custom MIME::Types added by users.\n\nMIME types are used in MIME-compliant communications, as in e-mail or HTTP\ntraffic, to indicate the type of content which is transmitted. MIME::Types\nprovides the ability for detailed information about MIME entities (provided as\na set of MIME::Type objects) to be determined and used programmatically. There\nare many types defined by RFCs and vendors, so the list is long but not\ncomplete; don't hesitate to ask to add additional information. This library\nfollows the IANA collection of MIME types (see below for reference).\n\nMIME::Types for Ruby was originally based on MIME::Types for Perl by Mark\nOvermeer, copyright 2001 - 2009. As of version 1.15, the data format for the\nMIME::Type list has changed and the synchronization will no longer happen.\n\nMIME::Types is built to conform to the MIME types of RFCs 2045 and 2231. It\ntracks the {IANA registry}[http://www.iana.org/assignments/media-types/]\n({ftp}[ftp://ftp.iana.org/assignments/media-types]) with some unofficial types\nadded from the {LTSW collection}[http://www.ltsw.se/knbase/internet/mime.htp]\nand added by the users of MIME::Types."
  s.email = ["austin@rubyforge.org"]
  s.extra_rdoc_files = ["Contributing.rdoc", "History.rdoc", "Licence.rdoc", "Manifest.txt", "README.rdoc", "docs/COPYING.txt", "docs/artistic.txt", "Contributing.rdoc", "History.rdoc", "Licence.rdoc", "README.rdoc"]
  s.files = [".gemtest", ".hoerc", ".travis.yml", "Contributing.rdoc", "Gemfile", "History.rdoc", "Licence.rdoc", "Manifest.txt", "README.rdoc", "Rakefile", "docs/COPYING.txt", "docs/artistic.txt", "lib/mime-types.rb", "lib/mime/types.rb", "lib/mime/types/application", "lib/mime/types/application.mac", "lib/mime/types/application.nonstandard", "lib/mime/types/application.obsolete", "lib/mime/types/audio", "lib/mime/types/audio.nonstandard", "lib/mime/types/audio.obsolete", "lib/mime/types/image", "lib/mime/types/image.nonstandard", "lib/mime/types/image.obsolete", "lib/mime/types/message", "lib/mime/types/message.obsolete", "lib/mime/types/model", "lib/mime/types/multipart", "lib/mime/types/multipart.nonstandard", "lib/mime/types/multipart.obsolete", "lib/mime/types/other.nonstandard", "lib/mime/types/text", "lib/mime/types/text.nonstandard", "lib/mime/types/text.obsolete", "lib/mime/types/text.vms", "lib/mime/types/video", "lib/mime/types/video.nonstandard", "lib/mime/types/video.obsolete", "test/test_mime_type.rb", "test/test_mime_types.rb", "test/test_mime_types_cache.rb", "test/test_mime_types_lazy.rb"]
  s.homepage = "http://mime-types.rubyforge.org/"
  s.licenses = ["MIT", "Artistic 2.0", "GPL-2"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "mime-types"
  s.rubygems_version = "2.0.7"
  s.summary = "This library allows for the identification of a file's likely MIME content type"
  s.test_files = ["test/test_mime_type.rb", "test/test_mime_types.rb", "test/test_mime_types_cache.rb", "test/test_mime_types_lazy.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<minitest>, ["~> 5.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_development_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_development_dependency(%q<hoe-git>, ["~> 1.5"])
      s.add_development_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_development_dependency(%q<hoe-travis>, ["~> 1.2"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.7"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<minitest>, ["~> 5.0"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
      s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
      s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
      s.add_dependency(%q<hoe-git>, ["~> 1.5"])
      s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
      s.add_dependency(%q<hoe-travis>, ["~> 1.2"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<hoe>, ["~> 3.7"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<minitest>, ["~> 5.0"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.2"])
    s.add_dependency(%q<hoe-doofus>, ["~> 1.0"])
    s.add_dependency(%q<hoe-gemspec2>, ["~> 1.1"])
    s.add_dependency(%q<hoe-git>, ["~> 1.5"])
    s.add_dependency(%q<hoe-rubygems>, ["~> 1.0"])
    s.add_dependency(%q<hoe-travis>, ["~> 1.2"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<hoe>, ["~> 3.7"])
  end
end
