desc "Create binstubs for various programs"
task :binstubs do
  %w{html2haml rake rspec}.each do |pkg|
    sh "bundle binstubs #{pkg}"
  end
end

