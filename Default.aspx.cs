/*<header>
<entity> towers </entity>
<project> (FTR90U78) </project>
<developerid> Leandropaz (201br) </developerid>
</header>*/

using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows; 


namespace utilisateur
{
    public partial class _Default : Page
    {
        string connectionString = @"Server=.\sqlexpress; Database=master;Trusted_Connection=True;";
        protected void Page_Load(object sender, EventArgs e)
        {
            TButilisateur.Enabled = true;
            TBPasse.Enabled = true;

            SqlConnection con = new SqlConnection(connectionString);

        }

        protected void BTAccéder_Click(object sender, EventArgs e)
        {
            string IDutilisateu = TButilisateur.Text;
            string SPasse = TBPasse.Text;
            string SqlAcceder = "exec  Acceder @IDutilisateur =  " + IDutilisateu;
            string SqlPasse = "exec  Decrypte_Passe @IDutilisateur = " + IDutilisateu + ", @PWD3 = " + SPasse;
            
            string Nutilisateu = "";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(SqlAcceder, con);
            cmd.CommandType = CommandType.Text;
            SqlDataReader Acceder;
            con.Open();

            try
            {
                
                Acceder = cmd.ExecuteReader();
                if (Acceder.Read())
                {
                    con.Close();
                    cmd = new SqlCommand(SqlPasse, con);
                    cmd.CommandType = CommandType.Text;
                    SqlDataReader Passe;
                    con.Open();

                    Passe = cmd.ExecuteReader();

                    if (Passe.Read() && Passe.GetInt32(0) == 1) 
                    {
                        MessageBoxResult result = MessageBox.Show("Connexion réussie"); 
                    }
                    else 
                    {

                        MessageBoxResult result = MessageBox.Show("Mauvais identifian");
                    }
                }
                else
                {

                    MessageBoxResult result = MessageBox.Show("utilisateu Mauvais identifian");
                }
            }
            catch (Exception ex)
            {
                //LBPosts.Text = "Erro: " + ex.ToString();

                MessageBoxResult result = MessageBox.Show("Erro: " + ex.ToString());
            }
            finally
            {
                con.Close();
            }
        }
    }
 }
