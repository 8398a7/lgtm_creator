require 'lgtm_creator'
require 'thor'

module LgtmCreator
  class CLI < Thor
    desc 'convert sample.png', 'add lgtm string.'
    option :r
    def convert(src, dst = '')
      if options[:r]
        Dir.glob(src + '/*').each do |filename|
          next unless filename =~ /\.gif$/
          paths = filename.split('/')
          paths[paths.size - 1] = 'lgtm_' + paths.last
          LgtmCreator::Core.convert(filename, paths.join('/'))
        end
      else
        if dst.empty?
          puts 'Please specify a file name'
          return
        end
        LgtmCreator::Core.convert(src, dst)
      end
    end
  end
end
