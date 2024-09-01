# The name of this view in Looker is "Pseudonymous Users 20240725"
view: pseudonymous_users_20240725 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `analytics_321061426.pseudonymous_users_20240725` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: audiences {
    hidden: yes
    sql: ${TABLE}.audiences ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Device Category" in Explore.

  dimension: device__category {
    type: string
    sql: ${TABLE}.device.category ;;
    group_label: "Device"
    group_item_label: "Category"
  }

  dimension: device__mobile_brand_name {
    type: string
    sql: ${TABLE}.device.mobile_brand_name ;;
    group_label: "Device"
    group_item_label: "Mobile Brand Name"
  }

  dimension: device__mobile_model_name {
    type: string
    sql: ${TABLE}.device.mobile_model_name ;;
    group_label: "Device"
    group_item_label: "Mobile Model Name"
  }

  dimension: device__operating_system {
    type: string
    sql: ${TABLE}.device.operating_system ;;
    group_label: "Device"
    group_item_label: "Operating System"
  }

  dimension: device__unified_screen_name {
    type: string
    sql: ${TABLE}.device.unified_screen_name ;;
    group_label: "Device"
    group_item_label: "Unified Screen Name"
  }

  dimension: geo__city {
    type: string
    sql: ${TABLE}.geo.city ;;
    group_label: "Geo"
    group_item_label: "City"
  }

  dimension: geo__continent {
    type: string
    sql: ${TABLE}.geo.continent ;;
    group_label: "Geo"
    group_item_label: "Continent"
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo.country ;;
    group_label: "Geo"
    group_item_label: "Country"
  }

  dimension: geo__region {
    type: string
    sql: ${TABLE}.geo.region ;;
    group_label: "Geo"
    group_item_label: "Region"
  }

  dimension: last_updated_date {
    type: string
    sql: ${TABLE}.last_updated_date ;;
  }

  dimension: occurrence_date {
    type: string
    sql: ${TABLE}.occurrence_date ;;
  }

  dimension: predictions__churn_score_7d {
    type: number
    sql: ${TABLE}.predictions.churn_score_7d ;;
    group_label: "Predictions"
    group_item_label: "Churn Score 7d"
  }

  dimension: predictions__in_app_purchase_score_7d {
    type: number
    sql: ${TABLE}.predictions.in_app_purchase_score_7d ;;
    group_label: "Predictions"
    group_item_label: "In App Purchase Score 7d"
  }

  dimension: predictions__purchase_score_7d {
    type: number
    sql: ${TABLE}.predictions.purchase_score_7d ;;
    group_label: "Predictions"
    group_item_label: "Purchase Score 7d"
  }

  dimension: predictions__revenue_28d_in_usd {
    type: number
    sql: ${TABLE}.predictions.revenue_28d_in_usd ;;
    group_label: "Predictions"
    group_item_label: "Revenue 28d In USD"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_predictions__revenue_28d_in_usd {
    type: sum
    sql: ${predictions__revenue_28d_in_usd} ;;  }
  measure: average_predictions__revenue_28d_in_usd {
    type: average
    sql: ${predictions__revenue_28d_in_usd} ;;  }

  dimension: privacy_info__is_ads_personalization_allowed {
    type: string
    sql: ${TABLE}.privacy_info.is_ads_personalization_allowed ;;
    group_label: "Privacy Info"
    group_item_label: "Is Ads Personalization Allowed"
  }

  dimension: privacy_info__is_limited_ad_tracking {
    type: string
    sql: ${TABLE}.privacy_info.is_limited_ad_tracking ;;
    group_label: "Privacy Info"
    group_item_label: "Is Limited Ad Tracking"
  }

  dimension: pseudo_user_id {
    type: string
    sql: ${TABLE}.pseudo_user_id ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: user_info__first_purchase_date {
    type: string
    sql: ${TABLE}.user_info.first_purchase_date ;;
    group_label: "User Info"
    group_item_label: "First Purchase Date"
  }

  dimension: user_info__last_active_timestamp_micros {
    type: number
    sql: ${TABLE}.user_info.last_active_timestamp_micros ;;
    group_label: "User Info"
    group_item_label: "Last Active Timestamp Micros"
  }

  dimension: user_info__user_first_touch_timestamp_micros {
    type: number
    sql: ${TABLE}.user_info.user_first_touch_timestamp_micros ;;
    group_label: "User Info"
    group_item_label: "User First Touch Timestamp Micros"
  }

  dimension: user_ltv__engaged_sessions {
    type: number
    sql: ${TABLE}.user_ltv.engaged_sessions ;;
    group_label: "User Ltv"
    group_item_label: "Engaged Sessions"
  }

  dimension: user_ltv__engagement_time_millis {
    type: number
    sql: ${TABLE}.user_ltv.engagement_time_millis ;;
    group_label: "User Ltv"
    group_item_label: "Engagement Time Millis"
  }

  dimension: user_ltv__purchases {
    type: number
    sql: ${TABLE}.user_ltv.purchases ;;
    group_label: "User Ltv"
    group_item_label: "Purchases"
  }

  dimension: user_ltv__revenue_in_usd {
    type: number
    sql: ${TABLE}.user_ltv.revenue_in_usd ;;
    group_label: "User Ltv"
    group_item_label: "Revenue In USD"
  }

  dimension: user_ltv__session_duration_micros {
    type: number
    sql: ${TABLE}.user_ltv.session_duration_micros ;;
    group_label: "User Ltv"
    group_item_label: "Session Duration Micros"
  }

  dimension: user_ltv__sessions {
    type: number
    sql: ${TABLE}.user_ltv.sessions ;;
    group_label: "User Ltv"
    group_item_label: "Sessions"
  }

  dimension: user_properties {
    hidden: yes
    sql: ${TABLE}.user_properties ;;
  }
  measure: count {
    type: count
    drill_fields: [device__mobile_model_name, device__mobile_brand_name, device__unified_screen_name]
  }
}

# The name of this view in Looker is "Pseudonymous Users 20240725 Audiences"
view: pseudonymous_users_20240725__audiences {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Membership Expiry Timestamp Micros" in Explore.

  dimension: membership_expiry_timestamp_micros {
    type: number
    sql: membership_expiry_timestamp_micros ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_membership_expiry_timestamp_micros {
    type: sum
    sql: ${membership_expiry_timestamp_micros} ;;  }
  measure: average_membership_expiry_timestamp_micros {
    type: average
    sql: ${membership_expiry_timestamp_micros} ;;  }

  dimension: membership_start_timestamp_micros {
    type: number
    sql: membership_start_timestamp_micros ;;
  }

  dimension: name {
    type: string
    sql: name ;;
  }

  dimension: npa {
    type: yesno
    sql: npa ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: pseudonymous_users_20240725__audiences {
    type: string
    hidden: yes
    sql: pseudonymous_users_20240725__audiences ;;
  }
}

# The name of this view in Looker is "Pseudonymous Users 20240725 User Properties"
view: pseudonymous_users_20240725__user_properties {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Key" in Explore.

  dimension: key {
    type: string
    sql: key ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: pseudonymous_users_20240725__user_properties {
    type: string
    hidden: yes
    sql: pseudonymous_users_20240725__user_properties ;;
  }

  dimension: value__set_timestamp_micros {
    type: number
    sql: ${TABLE}.value.set_timestamp_micros ;;
    group_label: "Value"
    group_item_label: "Set Timestamp Micros"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_value__set_timestamp_micros {
    type: sum
    sql: ${value__set_timestamp_micros} ;;  }
  measure: average_value__set_timestamp_micros {
    type: average
    sql: ${value__set_timestamp_micros} ;;  }

  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }

  dimension: value__user_property_name {
    type: string
    sql: ${TABLE}.value.user_property_name ;;
    group_label: "Value"
    group_item_label: "User Property Name"
  }
}
