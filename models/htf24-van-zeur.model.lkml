connection: "htf2024"

# include all the views
include: "/views/**/*.view.lkml"



explore: raw_planets {}

explore: planet {
  join: star {
    type: left_outer
    relationship: many_to_one
    sql_on: ${star.host_id} = ${host_id};;
  }
}

explore: discovery_facility {}

explore: discovery_telescope {}

explore: star {}