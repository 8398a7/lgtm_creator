module LgtmCreator
  module Util
    module_function

    def split(file)
      list = []
      Magick::ImageList.new(file).each { |x| list.push(x) }
      list
    end

    def root_path
      paths = File.expand_path(File.dirname($PROGRAM_NAME)).split('/')
      paths.pop
      paths.join('/')
    end
  end
end
