print "クリックすると，Allie のリンク先リストのページに飛びます。ページサイズの関係で分割しています。"
for i in 1..57
    num = i*10000
    num = num.to_s
    print "* [Sample Allie URL List "+ num +"](https://github.com/maoringo/SampleRepository/wiki/Sample-Allie-URL-List-" + num + ")\n"
end
