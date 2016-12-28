module LgtmCreator
  module Util
    module_function

    def split(file)
      list = []
      Magick::ImageList.new(file).each { |x| list.push(x) }
      list
    end

    def root_path
      paths = caller.select { |line| line.include?('lgtm_creator') && line.include?('core.rb') }[0][/^([^:]+):\d+:in `[^']*'$/, 1].split('/')
      3.times { paths.pop }
      paths.join('/')
    end
  end
end
