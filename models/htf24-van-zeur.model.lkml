connection: "htf2024"

# include all the views
include: "/views/**/*.view.lkml"



explore: raw_planets {}

explore: planet {
  join: star {
    type: left_outer
    relationship: many_to_one
    sql_on: ${planet.host_id} = ${host_id};;
  }
  join: discovery_facility {
    type: left_outer
    relationship: many_to_one
    sql_on: ${discovery_facility.facility_id} = ${facility_id} ;;
  }
}

explore: discovery_facility {
  join: discovery_telescope {
    type: left_outer
    relationship: many_to_one
    sql_on: ${discovery_facility.facility_id} = ${facility_id} ;;
  }
}

explore: discovery_telescope {
  join: discovery_facility {
    type: left_outer
    relationship: many_to_one
    sql_on: ${discovery_telescope.facility_id} = ${facility_id} ;;
  }
}

explore: star {
  join: planet {
    type: left_outer
    relationship: many_to_one
    sql_on: ${star.host_id} = ${host_id} ;;
  }
}
