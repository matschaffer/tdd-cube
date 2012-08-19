desc 'Run all tests'
task :test do
  sh <<-BASH
    set -e
    berks install --shims
    strain cube --fail-fast
  BASH
end

task default: :test
