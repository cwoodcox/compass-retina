module Compass::SassExtensions::Functions::RetinaImages
  def retina_filename(filename)
    filename = filename.value
    extension = filename.chomp! File.extname(filename)
    Sass::Script::String.new "#{filename}@2x#{extension}"
  end
end
