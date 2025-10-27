# DataScientest_DBT_Exam

### Installation

1. Il faut créer d'abord un stage qui importe les données CSV du bucket AWS d'abord en suivant l'instruction du pourcours Snowflake.

2. Configuration Snowflake dans le fichier profiles.yml :
    - Compte 
    - Identifiant
    - Mot cd passe
    - Base de données
    - Schema

2. Création d'environnement virutuel

3. Installation des librairies dbt avec `pip install -r requirements.txt`

### Test

Il faut aller dans le réportoire `exam_dbt` avec `cd exam_dbt` d'abord et pour tester les indentifiants des tables stagings s'ils sont uniques et non nulls:
```bash
dbt test
```

### Création des tables

Les table sont sépararées en 2 parties:
- schema public avec tag("staging") : les tables brutes
- schema star avec tag("mart") : les tables de model étoilé
- schema report avec tag("report") : les vues pour reporting

Il faut aller dans le réportoire `exam_dbt` avec `cd exam_dbt` 

```bash
dbt run 
```

ou en selection avec tag:
```bash
dbt run -m tag:staging
```

ou en selection d'une table:
```bash
dbt run --select stg.album
```

Pour rafraîchir les table:
```bash
dbt run --full-refresh
```