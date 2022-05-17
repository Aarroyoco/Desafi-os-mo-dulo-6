require 'net/http'
require 'json'

def request(address, api_key)
    url = URI(address+api_key)
    
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
    <title>Fotos de la NASA</title>\n
    <head>\n
    </head>\n
    <body>\n
    <h1>Bienvenid@, conoce fotos tomadas por la NASA en el espacio<h1>\n
    <ul>\n"
    
    photos.map {|x| html += "\t<li><img src=#{x["img_src"]} width='200px'></li>\n"}    
    
    html +=
    "</ul>\n
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

body = request("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=1000", "&api_key=0IKxbe4GcwTwCfJsbKzegTyslzF6NhVE1gHkgRgy&page=1")
build_web_page(body)
print photos_count(body)