PACKAGE_NAME = "hello"
VERSION = "1.0.0"

desc "Package your app"
task :package => ['package:linux:x86', 'package:linux:x86_64', 'package:osx']

namespace :package do
  namespace :linux do
    desc "Package your app for Linux x86"
    task :x86 do
      create_package("linux-x86")
    end

    desc "Package your app for Linux x86_64"
    task :x86_64 do
      create_package("linux-x86_64")
    end
  end

  desc "Package your app for OS X"
  task :osx do
    create_package("osx")
  end
end

def create_package(target)
  package_dir = "#{PACKAGE_NAME}-#{VERSION}-#{target}"
  sh "rm -rf #{package_dir}"
  sh "mkdir #{package_dir}"
  sh "mkdir #{package_dir}/app"
  sh "cp hello.rb #{package_dir}/app/"
  sh "traveling-ruby extract #{package_dir}/runtime"
  sh "cp packaging/wrapper.sh #{package_dir}/hello"
end
