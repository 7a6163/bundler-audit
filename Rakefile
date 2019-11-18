require 'bundler/audit/cli'


desc 'Update vulns database and check gems using bundle-audit'
task :with_updates do
    Bundler::Audit::CLI.new.update
    Rake::Task['default'].invoke
end

desc 'Check gems for vulns using bundle-audit'
task :default do
    Bundler::Audit::CLI.new.check
end
