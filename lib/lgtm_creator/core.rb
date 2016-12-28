module LgtmCreator
  module Core
    module_function

    def convert(src, dst)
      image_list = LgtmCreator::Util.split(src)
      combined = combine_letters(image_list)
      convert_gif(combined).write(dst)
    end

    def convert_gif(image_list)
      result = Magick::ImageList.new
      image_list.each do |image|
        result.push(image)
      end
      result.optimize_layers(Magick::OptimizeTransLayer).deconstruct
    end

    def combine_letters(image_list)
      list = []

      image_path = LgtmCreator::Util.root_path + '/image/lgtm.png'
      lgtm = Magick::Image.read(image_path)[0]
      image_list.each do |image|
        src = Magick::Image.from_blob(image.to_blob)[0]
        result = src.composite(
          lgtm,
          Magick::CenterGravity,
          Magick::OverCompositeOp
        )
        list.push(result)
      end
      list
    end
  end
end
