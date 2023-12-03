# author: matt leary
# date: November 19, 2019
# intent: update the resume html and pdf file in one script

rmarkdown::render(input = "resume-en.Rmd",
                  output_file = "en/index.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_html.css', 'resume'),
                    self_contained = TRUE
                  ),
                  params = list(
                    doctype = "HTML"
                  )
            )

rmarkdown::render(input = "resume-pt.Rmd",
                  output_file = "pt/index.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_html.css', 'resume'),
                    self_contained = TRUE
                  ),
                  params = list(
                    doctype = "HTML"
                  )
)

rmarkdown::render(input = "resume-en.Rmd",
                  output_file = "en/biancamuniz_resume_pdf_en.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_pdf.css', 'resume')
                    ),
                  params = list(
                    doctype = "PDF"
                  )
)

rmarkdown::render(input = "resume-pt.Rmd",
                  output_file = "pt/biancamuniz_resume_to_pdf_pt.html",
                  output_options = list(
                    css = c('css/custom_resume.css', 'css/styles_pdf.css', 'resume')
                  ),
                  params = list(
                    doctype = "PDF"
                  )
)


