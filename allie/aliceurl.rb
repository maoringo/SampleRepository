#! ruby -Ku
lineabAry = []
File.open("alice_output_131007.txt"){|file|
while line = file.gets
    lineAry =  line.split("\t")
    lineabAry << lineAry[6].chomp 
end
}
lineabAry.uniq!
filename = 'urllist/alice_url_0.txt'


lineabAry.each_with_index{ |elem,i|
 if i % 10000 == 0
  if i != 0
         filename = "urllist/alice_url_" + i.to_s + ".txt"
  end
end
File.open(filename,'a'){|f| 
 if i % 10000 == 0
 f << "| Abbreviation | Allie URL |\n|:----------:|:------------:|\n" 
 end
 f << "|"+ elem +"|[http://allie.dbcls.jp/short/exact/Any/"+ elem +".html](http://allie.dbcls.jp/short/exact/Any/"+ elem +".html)|\n"
}
}

