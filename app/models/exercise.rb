
class Exercise

  def initialize(exercises, dir_name, text = nil)
    @exercises = exercises
    @name = dir_name
    @text = text
  end

  attr_reader :name

  def parent
    @exercises
  end

  def path
    parent.path + '/' + name
  end

  def text
    @text || disk[path].read(filename)
  end

  private

  include ExternalParentChainer

  def filename
    'instructions'
  end

end
