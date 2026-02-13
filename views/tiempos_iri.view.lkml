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
  dimension: tramite_homologado {
    type: string
    sql: ${TABLE}.tramite_homologado ;;
  }
  dimension: unidad {
    type: string
    sql: ${TABLE}.unidad ;;
  }
}
