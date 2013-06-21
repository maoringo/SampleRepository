#! ruby -Ku
print "| Drug Name | Sagace URL |\n|:----------:|:------------:|\n" 
File.open("externalmedicine.txt"){|file|
while line = file.gets
    lineAry =  line.split("\r")
end
lineAry.uniq!

lineAry.each{|elem|
 print "|"+elem+"|http://sagace.nibio.go.jp/cgi-bin/sagace/search.cgi?action=search&keyword="+elem+"|\n"
}
}

