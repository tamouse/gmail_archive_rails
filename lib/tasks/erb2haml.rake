namespace :erb do
    namespace :to do
        desc "Converts all .html.erb files to .html.haml"
        task :haml do
            print "looking for erb views..\n"
            files = Dir.glob(File.join(Rails.root,"app","views","**","*.html.erb"))
            files.each_line do |file|
                file.strip!
                print "parsing file: #{file}\n"
                sh "bin/html2haml #{file} | cat > #{file.gsub(/\.erb$/, '.haml')}"
                File.unlink(file)
            end
        end
    end
end
