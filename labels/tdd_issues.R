#' Create pages for print for tdd issue labels
#'
#' Multiple png files will be created in the working directory prefixed with
#' "tdd_issues_".
#'
#' @param width,height A `grid` unit giving width and height of paper
#' @param ncol,nrow The number of labels horizontally and vertically
#' @param margin A `grid` unit vector with for values giving the margin
#' (distance from paper edge to first label). Given in the order top, right,
#' bottom, and left.
#' @param gap A `grid` unit vector giving the spacing between labels in the
#' order vertical, horizontal
#' @param style A `marquee` style set giving the style to use for the label. The
#' label is formatted so that the first line (org/repo#issue) is a level 1
#' heading. The issue titel is standard text, and the labels has a `border`
#' style.
#'
tdd_issues <- function(width, height, ncol, nrow, margin, gap, style = label_style) {
  query <- 'query {
    search(query: "is:open is:issue archived:false label:\\"tidy-dev-day :nerd_face:\\"" type: ISSUE first: 100 <after>) {
      nodes {
        ... on Issue {
          title
          number
          repository { nameWithOwner }
          labels(first: 10) {
            nodes {
              name
            }
          }
        }
      }
      pageInfo {
        endCursor
        hasNextPage
      }
    }
  }'
  after <- ""
  all_issues <- character()
  i <- 1
  while (TRUE) {
    this_query <- glue::glue(query, .open = "<", .close = ">")
    issues <- gh::gh_gql(this_query)
    after <- paste0('after: "', issues$data$search$pageInfo$endCursor, '"')
    issue_labs <- do.call(c, lapply(issues$data$search$nodes, function(x) {
      issue <- paste0(x$repository$nameWithOwner, "#", x$number)
      title <- x$title
      labels <- unlist(x$labels$nodes)
      labels <- labels[!grepl("tidy-dev-day", labels)]
      labels <- if (length(labels) > 0) paste(paste0("{.border ", labels, "}   "), collapse = "") else ""
      marquee::marquee_glue("
    # {issue}

    {title}

    {labels}
    "
      )
    }))
    all_issues <- c(all_issues, issue_labs)
    if (!issues$data$search$pageInfo$hasNextPage) break
  }

  all_issues <- gsub("\\s*:\\S+:", "", all_issues)
  issue_grobs <- lapply(all_issues, marquee::marquee_grob, style = style)

  w <- (width - margin[2] - margin[4] - gap[2] * (ncol - 1)) / ncol
  h <- (height - margin[1] - margin[3] - gap[1] * (nrow - 1)) / nrow

  pages <- split(issue_grobs, rep(seq_along(issue_grobs), each = ncol * nrow)[seq_along(issue_grobs)])

  ragg::agg_png(
    "tdd_issues_%03d.png",
    width = grid::convertWidth(width, "cm", TRUE),
    height = grid::convertHeight(height, "cm", TRUE),
    units = "cm",
    res = 300
  )
  lapply(pages, function(page) {
    page <- gtable::gtable_matrix("issue_page", matrix(page, nrow = nrow, ncol = ncol), widths = rep(w, ncol), heights = rep(h, nrow), clip = "on")
    page <- gtable::gtable_add_col_space(page, gap[2])
    page <- gtable::gtable_add_row_space(page, gap[1])
    page <- gtable::gtable_add_padding(page, margin)
    grid::grid.newpage()
    grid::grid.draw(page)
  })
  dev.off()
}

#' Suggested label style - modify to your liking
label_style <- marquee::classic_style() |>
  marquee::modify_style(
    "h1",
    size = marquee::relative(1.2)
  ) |>
  marquee::modify_style(
    "body",
    margin = marquee::skip_inherit(marquee::trbl(marquee::rem(1)))
  ) |>
  marquee::modify_style(
    "border",
    padding = marquee::trbl(marquee::em(0.25)),
    border = "grey",
    border_size = marquee::trbl(1),
    border_radius = marquee::em(0.25)
  )
