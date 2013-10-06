#! ruby -Ku
lineabAry = []
print "| Abbreviation | Allie URL |\n|:----------:|:------------:|\n" 
File.open("alice_output_130107.txt"){|file|
while line = file.gets
    lineAry =  line.split("\t")
    lineabAry << lineAry[6].chomp 
end
lineabAry.uniq!
lineabAry.each{ |elem|
 print "|"+ elem +"|[http://allie.dbcls.jp/short/exact/Any/"+ elem +".html](http://allie.dbcls.jp/short/exact/Any/"+ elem +".html)|\n"
}
}

