interactor :off

guard 'shell' do
  watch %r|^cookbooks-sources/cube| do
    system <<-BASH
      set -e
      berks install --shims
      strain cube --fail-fast
    BASH
  end
end
