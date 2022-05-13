require 'mechanize'
require 'json'
require 'date'

agent = Mechanize.new
page  = agent.get("https://agriculture.house.gov/news/documentsingle.aspx?DocumentID=2106")

title = page.title.lstrip.chomp.gsub(/ \|.*$/,"")

topnewstext = page.search('.topnewstext b').text
arr = topnewstext.split("\r\n")

location = arr[1].lstrip[0..-2]
date = DateTime.parse(arr[2].lstrip).to_date.to_s

bodycopy = page.search('.bodycopy').text
article = bodycopy.lstrip.rstrip.gsub("”","\"").gsub("“","\"")

webpage =
{
  title: title,
  date: date,
  location: location,
  article: article
}

pp webpage
