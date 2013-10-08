#! ruby -Ku
lineAry = []
File.open("gene_symbols.txt"){|file|
while line = file.gets
    lineAry <<  line.chomp.sub(/\A['"]/, '').sub(/['"]\z/, '')
end
}
filename = 'urllist/targetmine_gene_symbols.txt'

lineAry.each_with_index{ |elem,i|
 if i % 10000 == 0
  if i != 0
         filename = "urllist/targetmine_gene_symbols_" + i.to_s + ".txt"
  end
end
File.open(filename,'a'){|f| 
 if i % 10000 == 0
 f << "| Gene Symbol | Targetmine URL |\n|:----------:|:------------:|\n" 
 end
 f << "|"+ elem +"|http://targetmine.nibio.go.jp/targetmine/keywordSearchResults.do?searchTerm="+ elem +"|\n"
}
}

