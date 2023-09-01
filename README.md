# CodeIgniter4_docker_template
Tento repozitár som vytvoril lebo som sa chcel naučiť používať CodeIgniter4 frameworku, ale chcel som zároveň používať docker, tak som vytvoril template, aby som problémy s rozbehnutím nemusel neustále riešiť pri nových projektoch.
## Build
Pre buildnutie projektu je nutné prejsť na priečinok s projektom a spustiť docker-compose up
Pred zverejnením premenujte .env na env v projekte/src
Tiež premenujte riadok CI_ENVIRONMENT = development na CI_ENVIRONMENT = production
## Nejaké info
JS je v projekte/src a CSS v projekte/css.
Pre linkovanie CSS použite href="<?php echo base_url("css/NázovStyle.css");?>
Pre linkovanie JS použite href="<?php echo base_url("js/NázovScript.js");?> 
Views(teda konkrétne zobrazenie stránky) dávajte do projekt/src/app/Views
Controllery (teda handlovanie a volanie view) dávajte do projekt/src/app/Controllers
Modely (teda kód pre databázu inserty update etc.) dávajte do projekt/src/app/Models
## Prístup
Na stránku pristupujeme cez http://localhost:8000/public/
