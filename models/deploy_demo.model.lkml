connection: "lookerplus"

####
########
########
## Release 8.0 ##


datagroup: deploy_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: deploy_demo_default_datagroup

include: "/models/order_items.view.lkml"
explore: order_items {
  group_label: "Deploy Demo"
}
