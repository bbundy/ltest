- connection: looker_external

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: expensive_pdt

- view: expensive_pdt
  
  derived_table:
    sql: SELECT SLEEP(300), 'sleepy' as name
    sql_trigger_if: 'SELECT 0'
    indexes: name

  fields:
  - dimension: name
    sql: ${TABLE}.name

  - dimension: num
    sql: select 1,2,3,4,5