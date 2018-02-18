if [ -d $1 ]; then
  echo 'error: dir exists or forget to enter your project name.'
  exit
else
  mkdir $1
  cd $1
  mkdir css js
  touch index.html css/style.css js/main.js
  echo -e '<!DOCTYPE>\n<title>Hello</title>\n<h1>Hi</h1>' > index.html
  cd css
  echo 'h1{color: red;}' > style.css
  cd ../js
  echo -e 'var string = "Hello World"\nalert(string)' > main.js
  echo 'success'
  exit
fi