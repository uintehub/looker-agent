connection: "dw_cdr"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: tiempos_iri_anget_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: tiempos_iri_anget_model_default_datagroup

explore: tiempos_iri{}

explore:  ingresos_salidas_iri{}
