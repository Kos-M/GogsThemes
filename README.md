# Welcome to GogsThemes!

This repo contains styles/themes  for well known self hosted git service [Gogs](https://gogs.io/).
If you find something not displayed good  , feel free to contribute
 to make it together even better!!
 
## Steps to activate a theme:
*$GOGS_ROOT = your gogs root install location*


## Velvet
 - ````cd $GOGS_ROOT```` 
 - ```git clone https://github.com/Kos-M/GogsThemes.git```
 - ````echo  '<link rel="stylesheet" href="/css/themes/velvet.css">' >> templates/inject/head.tmpl```` 
 - ```mv ./GogsThemes/themes/velvet.css public/css/themes```
 - ```rm -r ./GogsThemes```

 ## Dark
 - ````cd $GOGS_ROOT```` 
 - ```git clone https://github.com/Kos-M/GogsThemes.git```
 - ````echo  '<link rel="stylesheet" href="/css/themes/dark_theme.css">' >> templates/inject/head.tmpl```` 
 - ```mv  ./GogsThemes/img/grad1.png public/img```
 - ```mv ./GogsThemes/themes/dark_theme.css public/css/themes```
 - ```rm -r ./GogsThemes```

## ScreensShots

## Velvet

<img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/velvet/intro.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/velvet/signup.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/velvet/home.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/velvet/repo.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/velvet/file.png" width="250" height="150"> 

## Dark
<img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/intro.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/signup.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/home.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/repo.png" width="250" height="150"> <img src="https://raw.githubusercontent.com/Kos-M/GogsThemes/master/img/screenShots/file.png" width="250" height="150">

## Bg Gradient [Dark only]

Main background was original generated with simple css rules from  [GradientMagic](https://www.gradientmagic.com)
In some low end mobile devices found it enough  stressful to render quickly , so i generated css to png from [HtmlCssToImage](https://htmlcsstoimage.com/)

### To disable a theme:
Just open ```$GOGS_ROOT/templates/inject/head.tmpl``` and delete 
the line contains : ```<link rel="stylesheet" href="/css/themes/dark_theme.css">```
or (for velvet) : ```<link rel="stylesheet" href="/css/themes/velvet.css">```

### Contribute +/-
 Feel free to submit any new theme , or corrections to existing ones.
 
 Necessary tools:
- ![NodeJs](https://nodejs.org/en/)
- ![Sass](https://github.com/sass/sass) ``` npm install -g sass ```

Creating new theme:

-As main theme we use Dark-
- Fork this repo..
- ``` git clone https://github.com/<your userName here>/GogsThemes.git```
- ``` cd GogsThemes/themes```
- ``` cp dark_theme.scss  new_theme_name.scss```
- ``` sass --watch new_theme_name.scss  new_theme_name.css```
- ``` mkdir ../img/screenShots/new_theme_name```
- take screenshots like	{ file.png , home.png , intro.png , repo.png , signup.png } of your theme (saved under GogsThemes/img/screenShots/new_theme_name/
- update README.md with activate instructions and screenshots for new theme.
- commit & push to your fork 
- create a pull request.
