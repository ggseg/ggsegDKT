## Polygon data ----
#' Desikan-Killiany-Tourville Cortical Atlas
#'
#' Coordinate data for the Desikan-Killany-Tourville Cortical atlas,
#' with 31 regions in on the cortical surface of the brain.
#'
#' @docType data
#' @name dkt
#' @usage data(dkt)
#' @keywords datasets
#' @family ggseg_atlases
#'
#' @references 101 labeled brain images and a consistent human cortical labeling protocol. Arno Klein, Jason Tourville. Frontiers in Brain Imaging Methods. 6:171. DOI: 10.3389/fnins.2012.00171
#' (\href{https://doi.org/10.3389/fnins.2012.00171}{PubMed})
#'
#' @format ggseg brain-atlas
#' @examples
#' data(dkt)
"dkt"

## Mesh data ----
#' Desikan-Killiany-Tourville Cortical Atlas
#'
#' Coordinate data for the Desikan-Killany-Tourville Cortical atlas,
#' with 31 regions in on the cortical surface of the brain.

#'
#' @docType data
#' @name dkt_3d
#' @usage data(dkt_3d)
#' @keywords datasets
#' @family ggseg3d_atlases
#'
#' @references 101 labeled brain images and a consistent human cortical labeling protocol. Arno Klein, Jason Tourville. Frontiers in Brain Imaging Methods. 6:171. DOI: 10.3389/fnins.2012.00171
#' (\href{https://doi.org/10.3389/fnins.2012.00171}{PubMed})
#'
#' @format A tibble with 4 observations and a nested data.frame
#' \describe{
#'   \item{surf}{type of surface (`inflated` or `white`)}
#'   \item{hemi}{hemisphere (`left`` or `right`)}
#'   \item{data}{data.frame of necessary variables for plotting
#'   }
#'
#'   \item{atlas}{String. atlas name}
#'   \item{roi}{numbered region from surface}
#'   \item{annot}{concatenated region name}
#'   \item{label}{label `hemi_annot` of the region}
#'   \item{mesh}{list of meshes in two lists: vb and it}
#'   \item{acronym}{abbreviated name of annot}
#'   \item{lobe}{lobe localization}
#'   \item{region}{name of region in full}
#'   \item{colour}{HEX colour of region}
#' }
#' @examples
#' data(dkt_3d)
"dkt_3d"
