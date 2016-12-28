require 'lgtm_creator'
require 'thor'
require 'rmagick'

module LgtmCreator
  class CLI < Thor
    desc 'convert sample.png', 'add lgtm string.'
    option :r
    def convert(src, dst)
      if options[:r]
      else
        LgtmCreator::Util.convert(src, dst)
      end
    end
  end
end
