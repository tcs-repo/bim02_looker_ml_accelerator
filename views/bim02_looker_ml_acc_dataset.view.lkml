
view: bim02_looker_ml_acc_dataset {

  sql_table_name: `ai-accelerators-dai.Looker_ML_Accelerator.BIM02_Looker_ML_Acc_dataset`
    ;;




  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }


  measure: total_bounces {
    type: sum
    sql: ${bounces} ;;
  }

  measure: average_bounces {
    type: average
    sql: ${bounces} ;;
  }

  dimension: full_visitor_id {
    type: string
    sql: ${TABLE}.fullVisitorId ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: p {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.p_date ;;
  }

  dimension: time_on_site {
    type: number
    sql: ${TABLE}.time_on_site ;;
  }

  dimension: will_buy_on_return_visit {
    type: number
    sql: ${TABLE}.will_buy_on_return_visit ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
