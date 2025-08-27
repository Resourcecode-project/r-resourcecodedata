
#' Resourcecode statistical summary
#'
#  Example of summary statistics computed on the FIELD grid,
#' on the whole period covered by the database, currently 1994-2023.
#'
#' @format A data.frame with columns:
#' \describe{
#'   \item{hs_mean}{Mean significant wave height}
#'   \item{hs_max}{Maximal modelled significant wave height}
#'   \item{tp_mean}{Mean peak wave period}
#'   \item{wind_speed_mean}{Mean wind speed at 10m height}
#'   \item{wind_speed_max}{Maximal wind speed at 10m height}
#'   \item{cur_speed_mean}{Mean current speed at surface}
#'   \item{cur_speed_max}{Maximal surface current speed at surface}
#'   \item{Wave_Dp_MeanDir}{Mean wave direction from Dp (direction of mean vector)}
#'   \item{Wind_MeanDir}{Mean wind direction at 10m height (direction of mean vector)}
#'   \item{Cur_MeanDir}{Mean surface current direction (direction of mean vector)}
#'  }
#'  @source User Manual of the RESOURCECODE database
#' <https://archimer.ifremer.fr/doc/00751/86306/> and computations
#' computed by Nicolas Raillard from original netCDF files.
"rscd_stats"
