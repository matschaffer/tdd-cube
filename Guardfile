interactor :off

guard 'shell' do
  watch %r|^cookbooks-sources/cube| do
    system "berks install --shims && strain cube --fail-fast"
  end
end
