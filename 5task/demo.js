#!/usr/bin/env node
//得到一个fs对象
let fs = require("fs")
// 得到输入的项目名
var dirName = process.argv[2]
//获取当前目录
var currentDirName = process.cwd()
//进入到当前目录
process.chdir(currentDirName)
//新建那几个必须的目录和文件
fs.mkdirSync("./" + dirName) // mkdir $1
process.chdir("./" + dirName) // cd $1
fs.mkdirSync('css') // mkdir css
fs.mkdirSync('js') // mkdir js
fs.writeFileSync("./index.html", "<!DOCTYPE>\n<title>Hello</title>\n<h1>Hi</h1>")
fs.writeFileSync("css/style.css", "h1{color: red;}")
fs.writeFileSync("./js/main.js", "var string = 'Hello World'\nalert(string)")