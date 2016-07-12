require 'pry'

Dir.glob('./before_convert/*').each do |before|
  target_gif = before
  system "convert -coalesce -strip #{target_gif} ./tmp/working.png"

  Dir.glob('./tmp/*.png').each do |fname|
    cnt = fname.split('working-')[1].split('.png')[0]
    system "mv #{fname} #{fname.gsub(cnt.to_s, format('%03d', cnt))}"
  end

  Dir.glob('./tmp/*.png').each do |fname|
    system "composite -gravity center -compose over ./lgtm.png #{fname} #{fname}"
  end

  system "convert -layers optimize tmp/*.png #{target_gif.gsub('before_convert', 'after_convert')}"

  system 'rm tmp/*.png'
  system "mv #{target_gif} ./finished"
end
