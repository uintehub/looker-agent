view: tiempos_iri {
  sql_table_name: `proy-srs-data.dw_productividad_iri.tiempos_iri` ;;

  dimension: dias_habiles {
    type: number
    sql: ${TABLE}.dias_habiles ;;
  }
  dimension: estado_tramite {
    type: string
    sql: ${TABLE}.estado_tramite ;;
  }
  dimension_group: fecha_entrada {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_entrada ;;
  }
  dimension_group: fecha_salida {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha_salida ;;
  }
  dimension: nombre_trammite {
    type: string
    sql: ${TABLE}.nombre_trammite ;;
  }
  dimension: numero_solicitud {
    type: string
    sql: ${TABLE}.numero_solicitud ;;
  }
  dimension: periodo {
    type: string
    sql: ${TABLE}.periodo ;;
  }
  dimension: promedio_p85 {
    type: number
    sql: ${TABLE}.promedio_p85 ;;
  }
  dimension: tipo_calculo {
    type: string
    sql: ${TABLE}.tipo_calculo ;;
  }
  dimension: tipo_salida {
    type: string
    sql: ${TABLE}.tipo_salida ;;
  }
  dimension: tramite_homologado {
    type: string
    sql: ${TABLE}.tramite_homologado ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
  }
  measure: count {
    type: count
  }
}
