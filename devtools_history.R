usethis::create_tidy_package("resourcecodedata")
usethis::use_gpl3_license()

# Data is taken from \\\\datawork\\datawork-resourcecode\\EFTP\\RESULTS\\stats\\
rscd_field = as.data.frame(arrow::read_feather("data-raw/grid_FIELD.arrow"))
rscd_spectral = as.data.frame(arrow::read_feather("data-raw/grid_SPEC.arrow"))
rscd_coastline = as.data.frame(arrow::read_feather("data-raw/coastline.arrow"))
rscd_islands = as.data.frame(arrow::read_feather("data-raw/islands.arrow"))
rscd_triangles = t(arrow::read_feather("data-raw/triangles.arrow"))
rscd_variables = as.data.frame(arrow::read_feather("data-raw/variables.arrow"))
rscd_freq = array(0.0339 * 1.1 ^ (0:35))
rscd_dir = array(seq(from = 0, to = 350, by = 10))

rscd_1d_spectra = resourcecode::get_1d_spectrum("6200069", start = "1994-01-01", end = "1994-01-31")
rscd_2d_spectra = resourcecode::get_2d_spectrum("6200069", start = "1994-01-01", end = "1994-01-31")

usethis::use_data(
  rscd_field,
  rscd_spectral,
  rscd_coastline,
  rscd_islands,
  rscd_triangles,
  rscd_variables,
  rscd_freq,
  rscd_dir,
  rscd_1d_spectra,
  rscd_2d_spectra,
  version = 3,
  overwrite = TRUE
)



tools::resaveRdaFiles("data/", compress = "auto",version = 3)
tools::checkRdaFiles("data/")
