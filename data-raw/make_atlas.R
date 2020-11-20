devtools::load_all("../../ggsegExtra/")
devtools::load_all(".")
library(dplyr)

# convert DKT to fsaverage5
mri_surf2surf(subject = "bert",
              annot = "aparc.DKTatlas",
              hemi = "lh",
              output_dir = "data-raw/")

mri_surf2surf(subject = "bert",
              annot = "aparc.DKTatlas",
              hemi = "rh",
              output_dir = "data-raw/")


# Make  3d ----

dkt_3d <- make_aparc_2_3datlas(annot = "aparc.DKTatlas",
                               annot_dir = "data-raw/",
                               subjects_dir = freesurfer::fs_subj_dir(),
                               output_dir = "data-raw") %>%
  mutate(atlas = "dkt_3d")%>%
  unnest(ggseg_3d) %>%
  select(-region) %>%
  left_join(select(dk$data, hemi, region, label)) %>%
  nest_by(atlas, surf, hemi, .key = "ggseg_3d") %>%
  as_ggseg3d_atlas()

# Make palette ----
brain_pals <- make_palette_ggseg(dkt_3d)

usethis::use_data(brain_pals, internal = TRUE, overwrite = TRUE)
devtools::load_all(".")

# make atlas ----
dkt <- make_ggseg3d_2_ggseg(dkt_3d,
                            steps = 1:7,
                            smoothness = 2,
                            tolerance = .5,
                            output_dir = "data-raw/")
plot(dkt)

usethis::use_data(dkt, dkt_3d,
                  internal = FALSE,
                  overwrite = TRUE,
                  compress="xz")

