require 'net/http'
require 'json'

def request(url, api_key)
    url = URI(url+api_key)
    
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Get.new(url)
    
    response = https.request(request)
    JSON.parse response.read_body
end

def build_web_page(body)
    photos = body["photos"]
    
    html =
    "<html>\n
    \t<title>Fotos de la NASA</title>\n
    \t<head>\n
    \t</head>\n
    \t<body>\n
    \t <h1>descubre las fotos tomadas por la NASA en MARTE<h1>\n
    \t <ul>\n"
    
    
    photos.map {|x| html += "\t\t\t <li><img src=#{x["img_src"]} width='200px'></li>\n"}    
    
    html +=
    "\t\t</ul>\n
    </body>\n
    </html>"
    
    File.write('NASA_photos.html', html)
end

def photos_count(body)
    photos_array = body["photos"]
    final_array = []

    photos_array.each do |i|
        final_array << i['camera']['name']
    end

    final_hash = final_array.group_by {|x| x}
    final_hash.each do |k,v|
        final_hash[k] = v.count
    end

    final_hash
end

api_key = ARGV[0]
homepage = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "&api_key=#{api_key}&page=1")
build_web_page(homepage)
body = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "&api_key=#{api_key}")
print photos_count(body)