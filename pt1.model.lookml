- connection: le1

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: expensive_pdt

- view: expensive_pdt
  
  derived_table:
    sql: SELECT DISTINCT t1.character_set_name as name
        FROM INFORMATION_SCHEMA.COLLATIONS AS t1,
             INFORMATION_SCHEMA.COLLATIONS AS t2,
             INFORMATION_SCHEMA.COLLATIONS AS t3,
             INFORMATION_SCHEMA.COLLATIONS AS t4;
    sql_trigger_if: 'SELECT 1'
    indexes: name

  fields:
  - dimension: name
    sql: ${TABLE}.name

  - dimension: num
    sql: select 1,2,3,4,5