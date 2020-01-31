#install.packages("devtools") # Only if you don't have the devtools package
#devtools::install_github("ndphillips/VisualResume")


jpeg('Harriet-Dashnow-visualCV.jpg', width = 1500, height = 800)
VisualResume::VisualResume(
  titles.left = c("Harriet Dashnow", "Bioinformatician", 
                  "Built in R using the InfoResume package: www.ndphillips.github.io/inforesume"),
  titles.right = c("www.harrietdashnow.com", "h.dashnow@gmail.com", ""),
  titles.right.cex = c(2, 1.5, 1),
  titles.left.cex = c(4, 2, 1),
  timeline.labels = c("Education", "Employment"),
  timeline = data.frame(title = c("University of Melbourne", "University of Melbourne", "University of Melbourne", "Maternity leave",
                                  "\n\n\nMurdoch Children’s Research Institute", "St Vincent’s Institute", 
                                  "\nSt Hilda’s College", "Australian National University", "Peter MacCallum Cancer Centre",
                                  "University of Melbourne", "\nVictorian Life Sciences Computation Initiative, University of Melbourne", "Murdoch Children’s Research Institute",
                                  "University of Utah"
                                  ),
                        sub = c("Bachelor of Arts / Bachelor of Science", "Master of Science", "PhD", "",
                                "\n\n\n\n\nTechnical Assistant, Cell and Gene Therapy", "Intern/Research Assistant, Brodnicki Lab",
                                "\n\nResident Tutor", "Summer Intern, Easteal Lab", "Summer Intern, Campbell Lab", 
                                "Intern/Research Assistant, Holt Lab", "\n\nBioinformatician", "Bioinformatician",
                                "Postdoc, Quinlan Lab"
                                 ),
                        start = c(2007, 2012, 2015, 2017.5,
                                  2008, 2010.9,
                                  2012.15, 2011.85, 2012.001,
                                  2012.8, 2013.9, 2015.25,
                                  2019.3
                                   ),
                        end = c(2012, 2014, 2019.3, 2018,
                                2010.9, 2011.85,
                                2014, 2012, 2012.15,
                                2013.6, 2015.15, 2019.3,
                                2020
                                 ),
                        side = c(1, 1, 1, 1,
                                 0, 0, 
                                 0, 0, 0, 
                                 0, 0, 0,
                                 0)),
  milestones = data.frame(title = c("\n\n\n\nBA", "BSc", "MSc", "PhD"),
                          sub = c("\n\n\n\n\nPhsychology", "Genetics, Biochemistry and Molecular Biology", "Bioinformatics", ""),
                          year = c(2012, 2012, 2014, 2019.5)),
  events = data.frame(year = c(2014.7, 2014.9,
                               2015.5, 2017.5,
                               2017.7, 2018.5),
                      title = c("SRST2 paper", "Australasian Genomic Technologies Association Grant for Bioinformatics training", 
                                "Cpipe paper", "STRetch preprint/software", 
                                "Australian Genomics Health Alliance Australian Genomics PhD top up scholarship", "STRetch paper")),
  interests = list("programming" = c(rep("R", 10), rep("Python", 10), rep("Bpipe", 3), rep("Nim", 2)),
                   "community" = c(rep("COMBINE", 10), rep("ABACBS", 5)),
                   "writing and teaching" = c(rep("Elegant SciPy", 10), rep("Software Carpentry", 10), rep("Data Carpentry", 5))
                   ),
  year.steps = 1
)
dev.off()