require 'opencv'

class OpenCV::CvAvgComp
  
  # collide?
  #
  def collide?(comp)
    if (self.x < comp.x + comp.width && comp.x < self.x + self.width && self.y < comp.y + comp.height)
      return comp.y < self.y + self.height
    end
    return false
  end
  
  def to_s
    "#{self.x},#{self.y}-#{self.width}x#{self.height}"
  end
end