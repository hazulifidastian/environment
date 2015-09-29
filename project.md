# Project

## Skeleton

* company.project[.ver]
  * development folder
    * apps
      * app
      * app.2
      * app.3
    * build
      * app
      * mysql
      * debian
      * script
    * Dockerfile
    * docker-compose.yml
    * data
      * import
      * database-data
    * development.sh
  * production folder
    * apps
      * app
      * app.2
      * app.3
    * build
      * app
      * mysql
      * debian
      * script
    * Dockerfile
    * docker-compose.yml
    * data
      * import
      * database-data
      * BACKUP
    * production.sh
  * resources

## Git

* company.project[.ver].app
* company.project[.ver]

### .gitignore

**company.project[.ver]/.gitignore**

```
/resources
/development/apps
/production/apps
/production/data
```

## Backup folder Copy / Git annex / Cloud

* company.project[.ver].resources
* company.project[.ver].data

## Editor Configurations

* tab to space 8
* 1tbs indentation style
