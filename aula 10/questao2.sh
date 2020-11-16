#!/bin/bash
touch index.html

cat >index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Questao2</title>
</head>
<body>
    <h1>titulo_h1</h1>
    <ul>
    </ul>  
</body>
</html>
EOF

arquivo=$1

cat index.html | sed -E "s/titulo_h1/$(head -n 1 $arquivo)/g" > tmp
mv tmp index.html

for line in $(cat $arquivo | sed '1d'); do
    cat index.html | sed "/<\/ul>/i <li>$line</li>" > tmp
    mv tmp index.html
done
