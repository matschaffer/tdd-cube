guard 'shell' do
  watch %r|^cookbooks-sources/cube| do |m|
    system 'berks install --shims && vagrant provision'
  end
end
