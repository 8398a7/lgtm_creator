require 'lgtm_creator'
require 'thor'

module LgtmCreator
  class CLI < Thor
    desc 'convert sample.png', 'add lgtm string.'
    option :r
    option :autoname, type: :boolean
    def convert(src, dst = '')
      dst = LgtmCreator::Util.autoname(src) if options[:autoname]
      if options[:r]
        Dir.glob(src + '/*').each do |filename|
          next unless filename =~ /\.gif$/
          autoname = LgtmCreator::Util.autoname(filename)
          LgtmCreator::Core.convert(filename, autoname)
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
