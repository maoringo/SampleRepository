linearray = []
File.open("genesymbol.txt"){|file|
    while line = file.gets
        lines =  line.split("\t")
        linearray << lines[1]
    end
}
 linearray.uniq!
print "| Drug Name | Sagace URL |\n|:----------:|:------------:|\n" 
linearray.each{|elem|
print "|"+elem+"|http://sagace.nibio.go.jp/cgi-bin/sagace/search.cgi?action=search&keyword="+elem+"|\n"
}
