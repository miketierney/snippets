@root = "#{RAILS_ROOT}/app/views/"
files = []

Find.find @root do |path|
  unless File.directory? path # don't want the directories in our array, since they're really not all that useful
    unless File.dirname(path) == "#{@root}layouts" # We don't want any of the files in the layouts directory, since that's not what we're testing
      path.gsub!(@root,"")
      files << path unless File.basename(path) =~ /^[_]/ # anything start with an underscore is a partial, so we don't want them either.
    end
  end
end

files
