# bundle exec ruby lib/utils/face_detect.rb

require 'pry'
require 'opencv'
include OpenCV

@dirname = File.dirname(__FILE__)
@cascade_file = CvHaarClassifierCascade::load("#{@dirname}/haarcascades/haarcascade_frontalface_default.xml")

def find_faces(image, wider = 20)
  res = []
  @cascade_file.detect_objects(image) do |rect|
    wider_rect = CvRect.new(rect.x - wider, rect.y - wider, rect.width + wider*2, rect.height + wider*2)
    image.set_roi(wider_rect)
    face_img = image.copy # .resize(CvSize.new(300,300))
    res << face_img
  end
  res
end

def face_images(dir, scale=1.0)
  Dir.glob("#{dir}/*").map do |file|
    image = IplImage.load(file, 1)
    resized = image.resize(CvSize.new(image.cols*scale, image.rows*scale))
    face_images = find_faces(resized)
  end.flatten.compact
end

images = face_images('app/assets/images')

images.each_with_index do |image, idx|
  image.save("public/images/faces/face_img_#{idx}.png")
end

# window = GUI::Window.new('Display window') # Create a window for display.

# images.each_with_index do |image, idx|
#   window.show image
#   GUI::wait_key(1000)
# end

# GUI::wait_key
# window.destroy
