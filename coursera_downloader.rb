require 'Nokogiri'

PAGE = Nokogiri::HTML(open('video_page.html'))
DIRETORY  = './' + PAGE.css('.course-topbanner-name.coursera-university-color').text.strip.gsub!(' ', '_')

def main
  `mkdir #{DIRETORY}`
  downloaded = File.open('download_log.txt', 'rb').read

  links.each do |link|
    `wget --load-cookies cookies.txt --tries=25 '#{link.last}' -O '#{DIRETORY + '/' + link.first.gsub!(' ', '_')}'` if not downloaded.include?(link.last)
    write_txt('download_log.txt', link.last)
  end
end

def links
  page_links = []
  PAGE.css(".course-lecture-item-resource a").each do |video|
    page_links << [video.text.strip, video['href']]
  end
  page_links
end

def write_txt(filename, text)
  File.open(filename, 'a+') do |line|
    line.puts text
  end
end

main
