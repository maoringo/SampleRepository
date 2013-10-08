#! ruby -Ku
lineAry = []
File.open("generic_name.txt"){|file|
while line = file.gets
    linewords = line.chomp.sub(/\A['"]/, '').sub(/['"]\z/, '')
    if linewords != ""
        lineAry << linewords
    end
end
}
filename = 'urllist/generic_name.txt'

lineAry.each_with_index{ |elem,i|
 if i % 10000 == 0
  if i != 0
         filename = "urllist/generic_name" + i.to_s + ".txt"
  end
end
File.open(filename,'a'){|f| 
 if i % 10000 == 0
 f << "| Generic Name | Targetmine URL |\n|:----------:|:------------:|\n" 
 end
 elem2 = elem.gsub(/ /,'+')
 f << "|"+ elem +"|http://targetmine.nibio.go.jp/targetmine/keywordSearchResults.do?searchTerm="+ elem2 +"|\n"
}
}

