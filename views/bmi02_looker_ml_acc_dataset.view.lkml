# The name of this view in Looker is "Bmi02 Looker Ml Acc Dataset"
view: bmi02_looker_ml_acc_dataset {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `ai-accelerators-dai.Looker_ML_Accelerator.BIM02_Looker_ML_Acc_dataset`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Bounces" in Explore.

  dimension: bounces {
    type: number
    sql: ${TABLE}.bounces ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

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
