# Welcome to GogsThemes!

This repo contains styles/themes  for well known self hosted git service [Gogs](https://gogs.io/).
If you find something not displayed good  , feel free to contribute
 to make it together even better!!
 
## Steps to activate a theme:
*$GOGS_ROOT = your gogs root install location*


## Velvet
 - ````cd $GOGS_ROOT```` 
 - ````mkdir -p custom/templates/inject/````
 - ````mkdir -p custom/public/css/````
 - ```git clone https://github.com/Kos-M/GogsThemes.git```
 - ````echo  '<link rel="stylesheet" href="/css/themes/velvet.css">' >> custom/templates/inject/head.tmpl```` 
 - ````mv ./GogsThemes/themes/ custom/public/css/````
 - ````cp -r  GogsThemes/img/ custom/public/````
 - ```rm -r ./GogsThemes```
 - ``` Restart Gogs service : service gogs restart ```

 ## Dark
 - ````cd $GOGS_ROOT```` 
 - ````mkdir -p custom/templates/inject/````
 - ````mkdir -p custom/public/css/````
 - ```git clone https://github.com/Kos-M/GogsThemes.git```
 - ````echo  '<link rel="stylesheet" href="/css/themes/dark_theme.css">' >>  custom/templates/inject/head.tmpl```` 
 - ````mv ./GogsThemes/themes/ custom/public/css/````
 - ````cp -r  GogsThemes/img/ custom/public/````
 - ```rm -r ./GogsThemes```
 - ``` Restart Gogs service : service gogs restart ```


## Note: Running GOGS in Docker
### Quick start in Docker
Use preconfigured docker-compose with theme pre-activated:
- git clone https://github.com/Kos-M/GogsThemes .
- docker-compose up
- visit http://127.0.0.1:3000

If you are running gogs in Docker, the "custom" folder path will actually be in a volume or bind mount, depending on how you set up your container at creation time.

If you set up a bind mount for ```/data```, then your "custom" folder will be . For example, if your initial command to create the container looks like this:

 - ```docker run --name=gogs -p 10022:22 -p 10080:3000 -v /var/gogs:/data gogs/gogs```

...then your custom folder is ```/var/gogs/gogs``` (on the Docker host) and ```/data/gogs``` (in the container).

If you did not specify any parameters for ```/data```, then Docker will have created a volume for you in ```/var/lib/docker/volumes/```. A quick and dirty way to identify the volume is ```docker inspect $yourgogscontainer | grep volume```, although there are probably better ways to do this.

Source: https://github.com/gogs/gogs/tree/main/docker#custom-directory

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
- [NodeJs](https://nodejs.org/en/download/) 
- [Sass](https://github.com/sass/sass) ``` npm install -g sass ```

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

## Bonus - Cron Auto Switch Theme (Example)
 - Requires GogsThemes installed ( see above , steps )
 - Create tmpl file called `night.tmpl`  in our GOGS_ROOT/custom/templates/inject/night.tmpl
 - add for example dark theme 
 ```css 
 <link rel="stylesheet" href="/css/themes/dark_theme.css">
 ```
  - > crontab -e
  - Enter bellow code:
```cron
30 17 * * *  sudo  cat  /home/git/gogs/custom/templates/inject/night.tmpl > /home/git/gogs/custom/templates/inject/head.tmpl ; sudo  service gogs restart
0 7  * * *  cd /home/git/gogs/custom/templates/inject/; sudo echo "" >  head.tmpl ; sudo service gogs restart
```
*in above example GOGS_ROOT  is `/home/git/gogs/`

  ## > Contributors <
<a  href="https://github.com/Kos-M/GogsThemes/graphs/contributors">
<img  src="https://contrib.rocks/image?repo=Kos-M/GogsThemes"  />
</a>
