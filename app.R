library(shiny)

# Define the UI
ui <- fluidPage(
  tags$head(
    tags$style(HTML("
      /* General Styles */
      body {
        background-color: white;
        color: black;
      }
      
      /* Navbar Styles */
      .navbar-default {
        background-color: maroon;
        border-color: black;
      }
      .navbar-default .navbar-brand {
        color: white;
      }
      .navbar-default .navbar-brand:hover {
        color: white;
      }
      .navbar-default .navbar-nav > li > a {
        color: white;
      }
      .navbar-default .navbar-nav > li > a:hover {
        color: white;
      }
      .navbar-default .navbar-nav > .active > a,
      .navbar-default .navbar-nav > .active > a:focus,
      .navbar-default .navbar-nav > .active > a:hover {
        color: white;
        background-color: black;
      }
      
      /* Tab Panel Styles */
      .tab-content {
        background-color: white;
        color: black;
      }
      
      /* Header and Paragraph Styles */
      h1 {
        color: maroon;
      }
      p {
        color: black;
      }

      /* Footer Styles */
      .footer {
        background-color: maroon;
        color: white;
        padding: 10px;
        position: fixed;
        bottom: 0;
        width: 100%;
        text-align: center;
      }
    "))
  ),
  
  navbarPage("University of Kelaniya",
             # Home Tab
             tabPanel("Home",
                      h1("Welcome to the University of Kelaniya"),
                      p("The University of Kelaniya is dedicated to excellence in education, research, and service to the nation and the world. We aim to foster intellectual and personal growth, encouraging our students to reach their full potential.")
             ),
             
             # About Us Tab
             navbarMenu("About Us",
                        tabPanel("History",
                                 h1("Our History"),
                                 p("The University of Kelaniya traces its roots back to 1875, originally established as the Vidyalankara Pirivena, a center for Buddhist learning and cultural studies. It was transformed into a university in 1959 and has grown to become a leading institution of higher education in Sri Lanka.")
                        ),
                        tabPanel("Mission & Vision",
                                 h1("Mission & Vision"),
                                 p("Our mission is to provide a comprehensive education that fosters critical thinking, innovation, and social responsibility. Our vision is to be a globally recognized center of excellence in education and research.")
                        ),
                        tabPanel("Leadership",
                                 h1("Leadership"),
                                 p("The University of Kelaniya is led by a dedicated team of academic and administrative professionals committed to maintaining the highest standards of education and research.")
                        )
             ),
             
             # Academics Tab
             navbarMenu("Academics",
                        tabPanel("Institutes & Faculties",
                                 h1("Institutes & Faculties"),
                                 p("The University of Kelaniya comprises several faculties including the Faculty of Humanities, Faculty of Science, Faculty of Medicine, Faculty of Social Sciences, and Faculty of Commerce and Management. Each faculty offers a wide range of undergraduate and postgraduate programs.")
                        ),
                        tabPanel("Courses",
                                 h1("Courses"),
                                 p("We offer a variety of courses across different disciplines. Our programs are designed to provide students with the knowledge and skills needed to succeed in their chosen fields.")
                        ),
                        tabPanel("Academic Calendar",
                                 h1("Academic Calendar"),
                                 p("The academic calendar outlines the important dates and events for the academic year, including the start and end of semesters, examination periods, and holidays.")
                        )
             ),
             
             # Admissions Tab
             navbarMenu("Admissions",
                        tabPanel("Undergraduate",
                                 h1("Undergraduate Admissions"),
                                 p("Learn more about our undergraduate programs, admission requirements, and the application process. We welcome students from diverse backgrounds to join our vibrant academic community.")
                        ),
                        tabPanel("Graduate",
                                 h1("Graduate Admissions"),
                                 p("Explore our graduate programs and find out how to apply. Our advanced degrees are designed to help you achieve your academic and professional goals.")
                        ),
                        tabPanel("International Students",
                                 h1("International Students"),
                                 p("We are proud to host students from around the world. Find out more about our international student community, admission requirements, and support services.")
                        )
             ),
             
             # Research Tab
             navbarMenu("Research",
                        tabPanel("Research Projects",
                                 h1("Research Projects"),
                                 p("The University of Kelaniya is home to numerous research projects across various disciplines. Our researchers are dedicated to advancing knowledge and addressing global challenges.")
                        ),
                        tabPanel("Publications",
                                 h1("Publications"),
                                 p("Our faculty and students regularly publish their research findings in leading academic journals. Explore our recent publications and discover the impact of our research.")
                        ),
                        tabPanel("Research Facilities",
                                 h1("Research Facilities"),
                                 p("We offer state-of-the-art research facilities and resources to support our researchers. From laboratories to libraries, we provide the tools needed for groundbreaking research.")
                        )
             ),
             
             # Campus Life Tab
             navbarMenu("Campus Life",
                        tabPanel("Student Life",
                                 h1("Student Life"),
                                 p("Experience the vibrant student life at the University of Kelaniya. From cultural events to sports activities, there is something for everyone.")
                        ),
                        tabPanel("Clubs & Societies",
                                 h1("Clubs & Societies"),
                                 p("Join one of our many clubs and societies to pursue your interests and meet like-minded individuals. We offer a wide range of extracurricular activities.")
                        ),
                        tabPanel("Sports Facilities",
                                 h1("Sports Facilities"),
                                 p("Stay active and healthy with our excellent sports facilities. Whether you enjoy team sports or individual activities, we have something for you.")
                        )
             ),
             
             # News & Events Tab
             navbarMenu("News & Events",
                        tabPanel("News",
                                 h1("News"),
                                 p("Stay up-to-date with the latest news from the University of Kelaniya. Read about our achievements, events, and initiatives.")
                        ),
                        tabPanel("Events",
                                 h1("Events"),
                                 p("Discover upcoming events at the University of Kelaniya. From academic conferences to cultural festivals, there is always something happening on campus.")
                        )
             ),
             
             # Faculty Tab
             navbarMenu("Faculty",
                        tabPanel("Faculty Profiles",
                                 h1("Faculty Profiles"),
                                 p("Meet our distinguished faculty members. Learn about their academic backgrounds, research interests, and contributions to their fields.")
                        ),
                        tabPanel("Research Interests",
                                 h1("Research Interests"),
                                 p("Explore the diverse research interests of our faculty members. Our faculty are engaged in cutting-edge research across various disciplines.")
                        )
             ),
             
             # Alumni Tab
             navbarMenu("Alumni",
                        tabPanel("Alumni Profiles",
                                 h1("Alumni Profiles"),
                                 p("Read about the achievements of our alumni. Our graduates have gone on to excel in various fields and make significant contributions to society.")
                        ),
                        tabPanel("Alumni Services",
                                 h1("Alumni Services"),
                                 p("Stay connected with the University of Kelaniya through our alumni services. We offer a range of resources and support for our alumni community.")
                        )
             ),
             
             # Career Services Tab
             navbarMenu("Career Services",
                        tabPanel("Career Counseling",
                                 h1("Career Counseling"),
                                 p("Get career advice and counseling from our experienced staff. We are here to help you navigate your career path and achieve your professional goals.")
                        ),
                        tabPanel("Internships",
                                 h1("Internships"),
                                 p("Find internship opportunities to gain practical experience and build your professional network. We offer internships across various industries.")
                        ),
                        tabPanel("Job Placements",
                                 h1("Job Placements"),
                                 p("Our job placement services can help you find employment after graduation. We work with leading employers to connect our graduates with job opportunities.")
                        )
             ),
             
             # Library Tab
             navbarMenu("Library",
                        tabPanel("Digital Resources",
                                 h1("Digital Resources"),
                                 p("Access a wealth of digital resources including e-books, journals, and databases. Our library provides the tools you need for your academic success.")
                        ),
                        tabPanel("Library Services",
                                 h1("Library Services"),
                                 p("Learn about the services offered by our library. From research assistance to study spaces, we are here to support your academic journey.")
                        )
             ),
             
             # Student Services Tab
             navbarMenu("Student Services",
                        tabPanel("Counseling",
                                 h1("Counseling Services"),
                                 p("Our counseling services are here to support your mental health and well-being. We offer confidential counseling to help you navigate life's challenges.")
                        ),
                        tabPanel("Health Services",
                                 h1("Health Services"),
                                 p("Stay healthy with our comprehensive health services. We provide medical care and health education to promote a healthy campus community.")
                        ),
                        tabPanel("Accommodation",
                                 h1("Accommodation"),
                                 p("Find out about the accommodation options available at the University of Kelaniya. We offer a range of housing options to suit your needs.")
                        ),
                        tabPanel("Financial Aid",
                                 h1("Financial Aid"),
                                 p("Learn about the financial aid options available to help you fund your education. We offer scholarships, grants, and loans to eligible students.")
                        )
             ),
             
             # Contact Us Tab
             navbarMenu("Contact Us",
                        tabPanel("Departments",
                                 h1("Contact Departments"),
                                 p("Get in touch with the various departments at the University of Kelaniya. We are here to assist you with any inquiries you may have.")
                        ),
                        tabPanel("Services",
                                 h1("Contact Services"),
                                 p("Reach out to our service departments for support and assistance. We are committed to providing excellent service to our community.")
                        )
             )
  ),
  
  # Footer with Legal Information
  tags$div(class = "footer",
           p("Privacy Policy | Terms of Use"),
           p("University of Kelaniya, Dalugama, Kelaniya 11600, Sri Lanka | Tel: +94 11 290 3000"),
           p("Copyrights @ EUS Office 2024")
  )
)

# Define the server logic
server <- function(input, output) {
  # Currently, no server logic is required for this static architecture prototype.
}

# Run the application
shinyApp(ui = ui, server = server)
