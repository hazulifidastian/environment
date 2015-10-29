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
      * BACKUP

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
