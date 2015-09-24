require 'pry'

Dir.glob('./before_convert/*').each do |before|
  target_gif = before
  system "convert -strip #{target_gif} ./tmp/working.png"

  Dir.glob('./tmp/*.png').each do |fname|
    system "composite -gravity center -compose over ./lgtm.png #{fname} #{fname}"
  end

  system "convert -delay 10 -layers optimize tmp/*.png #{target_gif.gsub('before_convert', 'after_convert')}"

  system 'rm tmp/*.png'
  system "mv #{target_gif} ./finished"
end
