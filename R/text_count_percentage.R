geom_text_count <- function(nudge_y = 0, position =
                              position_dodge2(width = .9,
                                              preserve = "single"), ...){

  stat_count(geom = "text",
             aes(label = after_stat(count),
                 y = after_stat(count) + nudge_y),
             vjust = 0,
             position = position,
             ...
             )

}

geom_text_count_percent <- function(nudge_y = 0,
                                    lineheight = .85,
                                    position = position_dodge2(width = .9,
                                                               preserve = "single"), ...){

  stat_count(geom = "text",
             aes(label = paste0(after_stat(count), "\n(",

                                round(
                                  100*(..count..)/
                                    tapply(..count..,..PANEL..,sum)[..PANEL..],
                                  1), "%)" ),
                 y = after_stat(count) + nudge_y),
             vjust = 0,
             lineheight = lineheight,
             position = position,
             ...
             )
}
