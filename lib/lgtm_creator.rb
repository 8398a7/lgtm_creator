require 'lgtm_creator/version'
require 'lgtm_creator/cli'

module LgtmCreator
  module Util
    module_function

    def convert(src, dst)
      image_list = LgtmCreator::Util.split(src)
      combine_letters = LgtmCreator::Util.combine_letters(image_list)
      LgtmCreator::Util.convert_gif(combine_letters).write(dst)
    end

    def split(file)
      list = []
      Magick::ImageList.new(file).each { |x| list.push(x) }
      list
    end

    def combine_letters(image_list)
      list = []

      lgtm = Magick::Image.read('./lgtm.png')[0]
      image_list.each do |image|
        src = Magick::Image.from_blob(image.to_blob)[0]
        result = src.composite(lgtm, Magick::CenterGravity, Magick::OverCompositeOp)
        list.push(result)
      end
      list
    end

    def convert_gif(image_list)
      result = Magick::ImageList.new
      image_list.each do |image|
        result.push(image)
      end
      result.optimize_layers(Magick::OptimizeTransLayer).deconstruct
    end
  end
end
