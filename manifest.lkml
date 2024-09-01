project_name: "ga_four"

## Connection Constants:
constant: GA4_CONNECTION {
  value: "bigquery"  // change to connection string in BigQuery
  export: override_required
}

constant: GA4_SCHEMA {
  value: "analytics_customer"  // change to dataset string in BigQuery
  export: override_required
}

constant: GA4_TABLE_VARIABLE {
  value: "events_*"
  export: override_optional
}
constant: EVENT_COUNT {
  value: ""
  export: override_optional
}
constant: model_step_prediction {
  value: "60"
  #export: override_optional
}

constant: GA4_BQML_train_months {
  value: "12"
  # export: override_optional
}

constant: GA4_BQML_test_months {
  value: "3"
  # export: override_optional
}

constant: GA4_BQML_future_synth_months {
  value: "12"
  # export: override_optional
}
