view: ingresos_salidas_iri {
  sql_table_name: `proy-srs-data.dw_productividad_iri.ingresos_salidas_iri` ;;

  dimension: estado_act {
    type: string
    description: "The current status of the request."
    sql: ${TABLE}.estado_act ;;
  }
  dimension_group: fecha_ingreso {
    type: time
    description: "The date the request was submitted."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_ingreso ;;
  }
  dimension_group: fecha_salida {
    type: time
    description: "The date the request was completed or finalized."
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha_salida ;;
  }
  dimension: nombre_tramite {
    type: string
    description: "The name or type of request."
    sql: ${TABLE}.nombre_tramite ;;
  }
  dimension: numero_solicitud {
    type: string
    description: "The unique identifier for the request."
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: responsable_estado {
    type: string
    description: "The individual responsible for the current status of the request."
    sql: ${TABLE}.responsable_estado ;;
  }
  dimension: tramite_homologado {
    type: string
    description: "The standardized name or type of request."
    sql: ${TABLE}.tramite_homologado ;;
  }
  dimension: unidad {
    type: string
    description: "The organizational unit associated with the request."
    sql: ${TABLE}.unidad ;;
  }
  measure: count {
    type: count
  }
}
