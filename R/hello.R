#' Set gas planet
#'
#' @inheritParams pkgB::set_planet
#'
#' @return planet object
#' @export
set_gas_planet <- function(name){
  planet <- list(name = name, structure = "rocky")
  class(planet) <- c("gas_planet", "planet")
  return(planet)
}

#' Say hello to a gas planet
#'
#' @inheritParams pkgB::hello
#'
#' @import pkgB
#'
#' @examples
#' planet <- set_gas_planet("Jupiter")
#' hello(planet)
#'
#' @export
hello.gas_planet <- function(planet, ...) {
  print(paste0("Hello, ", planet$name, "! You look breezy today."))
}
