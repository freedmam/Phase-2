using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class CourseCatalog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getCourseInfo();
        } 
    }

    public void getCourseInfo()
    {
        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";

            sc.Open();

            //Creates a new sql insert command to add info into truck table
            System.Data.SqlClient.SqlCommand insert = new System.Data.SqlClient.SqlCommand();
            insert.Connection = sc;

            insert.CommandText = "INSERT INTO dbo.Course (CourseID, CourseName, CourseDescription) VALUES (1, 'Beat Production', 'Students participating in the music production class will work on developing a technical skill set for music theory and production. Students will get a comprehensive overview of music theory, including tempo, song formatting, chord progressions, major/minor chords, scales, intervals, and melodic structure. Students will learn how to set-up and use production equipment such as MPCs, midi keyboards, microphones, and other tools of the craft. The class will also focus on the navigation and utilization computer software such as the MPC, Propeller head Record, and Reason 4.0 to create both instrumental and complete songs. Classroom components include lecture, one-on-one instruction, hands-on learning, individual and group workspace, and recording sessions on site and at alternative studio locations.'),";
            insert.CommandText += "(2, 'Breakdancing', 'Students participating in the beginning, intermediate, and advanced B-boy/B-girl classes will learn the basic history of the dance and the hip-hop culture surrounding it, develop B-Boy/B-Girl etiquette, and receive instruction in the basic skills of top rocking, footwork, and freezes. Students will be provided instruction as well as the open space to practice and develop artistically, in individual and group contexts. All participants will cipher alongside teachers and receive personalized help from the instructors. Classroom components include choreographed routines, cipher sessions, and battling. When teaching and discussing history, students will also participate in discussions.'),";
            insert.CommandText += "(3, 'Chess', 'In 2005 Words Beats & Life hosted the worlds first hip-hop chess tournament and the following year we created our first class. Over the years we have hosted tournaments, film screenings, invited guest speakers, hosted chess themed gallery shows, and created two mixtapes and one full-length album. Chess is the game that brings together our students across artistic disciplines. Chess apprentices will be ranked, travel to compete, compete in Bumrush the Boards, Compete in 36 squares. Students can also apply for scholarships while they build their skills.'),";
            insert.CommandText += "(4, 'DJing', 'Students participating in the DJ Class will learn the various aspects and practices under the umbrella of DJing, including production and related musicianship. Students will also learn methods of execution employed by DJs, producers, and musicians of other genres to enhance their experience and expand their artistic options. They will be trained in skills such as scratching, beatmatching, blending and performance skills (party style; b-boy dance; in conjunction with rap artist). Students will leave with the skills needed to perform live, and will be able to identify principal icons of different eras, demonstrate the knowledge of equipment and comprehension of technical and artistic vocabulary. They will be exposed to various careers and jobs that DJs can hold. Students will further gain comprehension of DJ history and the DJ’s role in the creation of hip-hop culture.'),";
            insert.CommandText += "(5,'Emceeing/Rapping', 'Students participating in the Emcee class will be introduced to the art of hip-hop songwriting and encouraged to create lyrical works of their own. Students will be instructed in the basic concepts of songwriting, including rhyming sequencing, bar counting, song structure, freestyle techniques, composition, breath control, and vocal recording. Classroom components include writing workshops, freestyle sessions, lyrical exercises, critical content analysis of music video/songs, group discussion, and recording. The class will also focus on performance preparation by creating cipher space, and alot time for students to share their compositions with their peers and receive feedback in a comfortable environment.'),";
            insert.CommandText += "(6,'Fine Art/Street Art/Graffiti Art','Students participating in the fine art/street art/graffiti workshops will learn the various aspects, skills, styles, and background knowledge involved in the public art form of graffiti as an element of hip hop. Students will learn the basic history of public name writing and early forms of graffiti, and be challenged to think critically about the ethics, aesthetics, and legality surrounding the craft. Students will be provided instruction as well as the open space to practice and develop artistically on their own and in groups using a variety of mediums ranging from pencil and markers to paint pens and spray-paint. Classroom components include group and individual workspace for sketching and conceptual piece construction, lecture, group discussion, and a practice wall where students can hone their skills with the medium of spray-paint. Students will also potentially have the opportunity to be a part of public mural construction in the DC Metropolitan area and to showcase their work in gallery shows.'),";
            insert.CommandText += "(7,'Hip-Hop Dance', 'This class will provide a valuable understanding of and appreciation for the improvisational nature of this dance form while learning basic movements and terminology. Hip hop incorporates the sounds of rap, R & B and pop music which encompass precise body isolation, some “tutting” and most importantly freestyle movement to give students the opportunity to develop their own sense of style. There is no previous training required to take this class however students will have the opportunity to learn basic technique and isolations from other styles of dance including modern and some very basic ballet. If interested in taking this class be prepared to work hard, have fun and bring big personality!'),";
            insert.CommandText += "(8,'Photography/Videography','In this basic digital photography class, students will learn how to handle cameras and other photographic equiptment, navigate camera settings, set up a studio, and shoot in nature. Make and take images using eyes, minds and hearts, to tell our story.  Students will have hands on experience with different types of cameras. Activities include a photo safari, neighborhood exploration, still lifes, portraits, candid shots, selfies, a little bit of everything. Students will produce wall ready images as a final project. No prior experience or ownership of a camera is necessary. Digital Media Production class teaches students the basics of photography, video production, video editing, and storytelling.  Students will be exposed to all phases of production (pre-production, production, post-production, marketing and distribution) and will gain hands on experience operating camera and audio equipment, as well as editing their footage in Adobe Premiere Pro.  No prior experience or ownership of a camera is necessary.'),";
            insert.CommandText += "(9, 'Spoken Word', 'Students participating in the Power Sessions classes will have a truly unique set of experiences in the Academy. Spoken Word students will have the opportunity to record, publish, regularly perform, travel to compete, participate in retreats and win scholarships. Students will participate in Brave New Voices as a non-competing or competing team. Apprentices will also participate in Louder than a Bomb. Students will also compete to attempt to be selected the DC Youth Poet Laureate. The goal of our Power Sessions is to create a community of young poets dedicated to using their voices to tell their stories, speak truth to power.'),";
            insert.CommandText += "(10, 'Theater of Hip-Hop', 'In this class, students from all elements are welcome to learn about stage performance.  They will learn how to utilize the stage; how to do blocking, how to utilize persona and costume, how to create and cultivate a character, and how to do these things inside and outside of Hip Hop. We will study various musical performer stage shows and study the art of theater. In the end, students will learn how to properly move a crowd/master a ceremony.');";

            insert.ExecuteNonQuery();

            sc.Close();

        }
        catch
        {

        }

        try
        {
            System.Data.SqlClient.SqlConnection sc = new System.Data.SqlClient.SqlConnection();
            sc.ConnectionString = @"Server = Localhost ; Database = C1; Trusted_Connection = Yes;";

            sc.Open();

            //Creates a new sql select command to display courses
            System.Data.SqlClient.SqlCommand select = new System.Data.SqlClient.SqlCommand("Select CourseName, CourseDescription, Level from dbo.Course;", sc);

            System.Data.SqlClient.SqlDataAdapter adapter = new SqlDataAdapter();

            SqlDataReader reader = select.ExecuteReader();

            // displays courses info in a gridview
            DisplayCourses.DataSource = reader;

            DisplayCourses.DataBind();

            reader.Close();
        }
        catch
        {

        }

    }



}