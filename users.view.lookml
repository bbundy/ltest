- view: users
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: age
    type: int
    sql: ${TABLE}.age

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: epoch_at
    type: int
    sql: ${TABLE}.epoch_at

  - dimension: name
    sql: ${TABLE}.name

  - dimension: yyyymmdd_at
    type: int
    sql: ${TABLE}.yyyymmdd_at

  - measure: count
    type: count
    drill_fields: [id, name, orders.count]

