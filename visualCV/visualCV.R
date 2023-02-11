#install.packages("devtools") # Only if you don't have the devtools package
#devtools::install_github("ndphillips/VisualResume")


jpeg('Harriet-Dashnow-visualCV.jpg', width = 1500, height = 800)
VisualResume::VisualResume(
  titles.left = c("Harriet Dashnow", "Bioinformatician", 
                  "Built in R using the InfoResume package: www.ndphillips.github.io/inforesume"),
  titles.right = c("www.harrietdashnow.com", "Last updated Feb 2023", ""),
  titles.right.cex = c(2, 1.5, 1),
  titles.left.cex = c(4, 2, 1),
  timeline.labels = c("Education", "Employment"),
  timeline = data.frame(title = c("University of Melbourne", "University of Melbourne", "University of Melbourne", "Parental leave",
                                  "\nMurdoch Children’s Research Institute", "St Vincent’s Institute", 
                                  "St Hilda’s College", "\nAustralian National University", "\nPeter MacCallum Cancer Centre",
                                  "\nUniversity of Melbourne", "\nVLSCI, University of Melbourne", "Murdoch Children’s Research Institute",
                                  "University of Utah", "Parental leave"
                                  ),
                        sub = c("Bachelor of Arts / Bachelor of Science", "Master of Science", "PhD", "",
                                "\n\nTechnical Assistant, Cell and Gene Therapy", "Intern/Research Assistant, Brodnicki Lab",
                                "Resident Tutor", "\n\nSummer Intern, Easteal Lab", "\n\nSummer Intern, Campbell Lab", 
                                "\n\nIntern/Research Assistant, Holt Lab", "\n\nBioinformatician", "Bioinformatician",
                                "Postdoc, Quinlan Lab (current position)", ""
                                 ),
                        start = c(2007, 2012, 2015, 2017.5,
                                  2008, 2010.9,
                                  2012.15, 2011.85, 2012.001,
                                  2012.8, 2013.9, 2015.25,
                                  2019.5, 2020.9
                                   ),
                        end = c(2012, 2014, 2019.5, 2018,
                                2010.9, 2011.85,
                                2014, 2012, 2012.15,
                                2013.6, 2015.15, 2019.5,
                                2023.2, 2021.15
                                 ),
                        side = c(1, 1, 1, 1,
                                 0, 0, 
                                 0, 0, 0, 
                                 0, 0, 0,
                                 0, 1)),
  milestones = data.frame(title = c("\n\n\n\nBA", "BSc", "MSc", "PhD"),
                          sub = c("\n\n\n\n\nPsychology", "Genetics, Biochemistry and Molecular Biology", "Bioinformatics", "Bioinformatics"),
                          year = c(2012, 2012, 2014, 2019.9)),
  events = data.frame(year = c(2014.9,
                               2017.7, 
                               2020.1, 
                               2020.9,
                               2022.5,
                               2023.1),
                      title = c("Australasian Genomic Technologies Association Grant for Bioinformatics training", 
                                "Australian Genomics Health Alliance Australian Genomics PhD top up scholarship", 
                                "NIH NHLBI BioData Catalyst Fellowship", 
                                "Australian Bioinformatics and Compuational Biology Society - PhD Thesis Award",
                                "NIH NGHRI T32 in Genomic Medicine Fellowship", 
                                "NIH NGHRI K99/R00 Pathway to Independence Award")),
  interests = list("computational" = c(rep("R, Python, Nim", 8), rep("nextflow, bpipe, WDL", 5), rep("Cloud computing", 8)),
                   "community" = c(rep("COMBINE", 5), rep("ABACBS", 5), rep("UPDA", 5)),
                   "SciCom and teaching" = c(rep("Elegant SciPy", 10), rep("Software Carpentry", 7), rep("Data Carpentry", 5), rep("mentoring", 7))
                   ),
  year.steps = 1
)
dev.off()