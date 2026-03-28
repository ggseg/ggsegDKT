library(ggseg.extra)
library(ggseg.formats)

Sys.setenv(FREESURFER_HOME = "/Applications/freesurfer/7.4.1")

annot_files <- file.path(
  here::here("data-raw"),
  c("lh.aparc.DKTatlas.annot", "rh.aparc.DKTatlas.annot")
)

dkt <- create_cortical_from_annotation(
  input_annot = annot_files,
  atlas_name = "dkt",
  output_dir = "data-raw",
  skip_existing = TRUE,
  cleanup = FALSE
) |>
  atlas_region_contextual("unknown|Unknown", "label")

print(dkt)
plot(dkt)

.dkt <- dkt
usethis::use_data(.dkt, overwrite = TRUE, compress = "xz", internal = TRUE)
