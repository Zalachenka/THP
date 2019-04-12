require 'rubygems'
require 'nokogiri'
require 'open-uri'

def deputes_name
	
	page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"))

	deputes_name = []

	page.xpath('//*[@id="content"]/div[1]/ul[1]/li[1]/h2').each do |x|
		

		deputes_name << x.text

	end

	puts deputes_name[0].split

	return deputes_name

end

 deputes_name

def deputes_email

	page = Nokogiri::HTML(open("https://www.voxpublic.org/spip.php?page=annuaire&cat=deputes&pagnum=600"))

	deputes_email = []

	page.xpath('//*[@id="content"]/div[1]/ul[192]/li[5]/a[1]').each do |y|

		deputes_email << y.text

	end

	puts deputes_email

	return deputes_email

end

deputes_email
