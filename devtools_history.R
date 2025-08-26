usethis::create_tidy_package("resourcecodedata")
usethis::use_build_ignore("devtools_history.R")
usethis::use_gpl3_license()

options(arrow.unsafe_metadata = TRUE)
# Data is taken from \\\\datawork\\datawork-resourcecode\\EFTP\\RESULTS\\stats\\
rscd_field <- as.data.frame(arrow::read_feather("data-raw/grid_FIELD.arrow"))
rscd_spectral <- as.data.frame(arrow::read_feather("data-raw/grid_SPEC.arrow"))
rscd_coastline <- as.data.frame(arrow::read_feather("data-raw/coastline.arrow"))
rscd_islands <- as.data.frame(arrow::read_feather("data-raw/islands.arrow"))
rscd_triangles <- t(arrow::read_feather("data-raw/triangles.arrow"))
rscd_variables <- as.data.frame(arrow::read_feather("data-raw/variables.arrow"))
rscd_freq <- array(0.0339 * 1.1 ^ (0:35))
rscd_dir <- array(seq(from = 0, to = 350, by = 10))

rscd_stats <- as.data.frame(arrow::read_feather("data-raw/overall_stats_rscode.arrow"))

rscd_stats <- rscd_stats[,c(
                        "hs_mean",
                        "hs_max",
                        "tp_mean",
                        "wndspd_mean",
                        "wndspd_max",
                        "curspd_mean",
                        "curspd_max",
                        "Wave_Dp_MeanDir",
                        "Wind_MeanDir",
                        "Cur_MeanDir"
                        )]
# Change columns names to 'snake_case'
names(rscd_stats)[4:10] <- c("wind_speed_mean",
                           "wind_speed_max",
                           "cur_speed_mean",
                           "cur_speed_max",
                           "wave_mean_dir_from_dp",
                           "wind_mean_dir",
                           "cur_mean_dir")

rscd_1d_spectra <- resourcecode::get_1d_spectrum("6200069", start = "1994-01-01", end = "1994-01-31")
rscd_2d_spectra <- resourcecode::get_2d_spectrum("6200069", start = "1994-01-01", end = "1994-01-31")

rscd_frequency1 <- rscd_1d_spectra$frequency1
rscd_frequency2 <- rscd_1d_spectra$frequency2


usethis::use_data(
  rscd_field,
  rscd_spectral,
  rscd_coastline,
  rscd_islands,
  rscd_triangles,
  rscd_variables,
  rscd_freq,
  rscd_frequency1 ,
  rscd_frequency2,
  rscd_dir,
  rscd_1d_spectra,
  rscd_2d_spectra,
  rscd_stats,
  version = 3,
  overwrite = TRUE
)


tools::resaveRdaFiles("data/", compress = "xz",version = 3)
tools::checkRdaFiles("data/")

usethis::use_build_ignore("dev/")
usethis::use_git_ignore("dev/")
usethis::use_git()
usethis::use_github()

#Now set up pkgdown to have a nice page
usethis::use_pkgdown()
pkgdown::build_site()
usethis::use_pkgdown_github_pages()

attachment::att_amend_desc(update.config = T)

devtools::spell_check()
devtools::document()
devtools::run_examples()
urlchecker::url_check()
devtools::build_readme()

devtools::install()

devtools::check_win_release()

devtools::release()

remotes::install_github("eddelbuettel/drat")
