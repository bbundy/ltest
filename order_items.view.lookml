- view: order_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: int
    sql: ${TABLE}.amount

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.order_id

  - dimension: sku_num
    type: int
    sql: ${TABLE}.sku_num

  - measure: count
    type: count
    drill_fields: [id, orders.id]

