require 'lgtm_creator'
require 'thor'

module LgtmCreator
  class CLI < Thor
    desc 'convert sample.png', 'add lgtm string.'
    option :r
    def convert(src, dst)
      if options[:r]
      else
        LgtmCreator::Core.convert(src, dst)
      end
    end
  end
end
