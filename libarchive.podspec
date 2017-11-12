Pod::Spec.new do |spec|
  spec.name         = 'libarchive'
  spec.platform     = :ios
  spec.version      = '3.1.900a'
  spec.license      = { :type => 'Open Source', :file => 'COPYING' }
  spec.homepage     = 'http://www.libarchive.org'
  spec.authors      = 'Tim Kientzle', 'Michihiro NAKAJIMA', 'Andres Mejia'
  spec.summary      = 'libarchive for iOS'
  spec.source       = { :git => 'https://github.com/mike-ferenduros/libarchive.git' }
  spec.source_files = 'libarchive/*.{h,c}'
  spec.exclude_files = 'libarchive/filter_fork_posix.c'
  spec.public_header_files = 'libarchive/archive.h', 'libarchive/archive_entry.h'
  spec.libraries    = 'z', 'bz2'
  spec.compiler_flags = '-DPLATFORM_CONFIG_H=\"config_ios.h\"', '-Wno-shorten-64-to-32', '-Wno-unused-function', '-Wno-conditional-uninitialized -Wno-comma'
end
