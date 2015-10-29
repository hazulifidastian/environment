# Project

## Skeleton

* company.project[.ver]
  * development folder
    * apps
      * app
      * app.2
      * app.3
    * dev
      * build
        * app
        * mysql
        * debian
        * script
        * extra
      * Dockerfile
      * docker-compose.yml
      * dev.sh
    * data
      * volumes
      * extra (link to dev/build/extra)
  * production folder
    * apps
      * app
      * app.2
      * app.3
    * pro
      * build
        * app
        * mysql
        * debian
        * script
        * extra
      * Dockerfile
      * docker-compose.yml
      * pro.sh
    * data
      * volumes
      * extra (link to pro/build/extra)
      * BACKUP

## Vagrant

* company.project[.ver].vagrant
  * company.project[.ver]
  * ...

## Git

* company.project[.ver].app
* company.project[.ver]

### .gitignore

**company.project[.ver]/.gitignore**

```
/resources
/development/apps
/development/data
/development/dev/build/extra
/production/apps
/production/data
/production/pro/build/extra
```

## Backup folder Copy / Git annex / Cloud

* company.project[.ver].resources
* company.project[.ver].data

## Editor Configurations

* tab to space 8
* 1tbs indentation style
* Editor Config (http://editorconfig.org/)

```
# editorconfig.org
root = true

[*]
charset = utf-8
end_of_line = lf
indent_style = tab
insert_final_newline = true
trim_trailing_whitespace = true

[*.{php,js}]
indent_style = space
indent_size = 8


[*.{css,html}]
indent_size = 8

[*.md]
trim_trailing_whitespace = false
```
